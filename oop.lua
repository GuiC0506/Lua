local function App(name)
    -- the properties and methods that are accessible outside the function
    -- are only those returned in the table

    name = name or "empty"
    return {
        name = name,
        status = "running",
        change_status = function(self, status)
                            self.status = status
                        end
    }
end

-- there is some serious inheritance happening here
local function Project(name, estimate_duration)
    local project = App(name)
    project.estimate_duration = estimate_duration
    -- self references the project, which is a reference to an 'App' instance

    project.change_duration = function(self, duration)
        self.estimate_duration = duration
    end

    project.change_status = function(self, status)
        print("Changing status...")
        print("changed")
        self.status = "ignored"
    end

    return project
end


local churros_dashboard = App("churros")
local random_dashboard = App()
print(churros_dashboard.name)
print(random_dashboard.name)
print(churros_dashboard.status)

-- calling a method when it takes the instance as a parameter
churros_dashboard:change_status("offline")
print(churros_dashboard.status)

local churros_project = Project("churros", 10000)
print(churros_project.estimate_duration)
churros_project:change_status("suspended")

print(churros_project.status)
churros_project:change_duration(1000)

print(churros_project.estimate_duration)
print(churros_project.status)

churros_project:change_status("altered")
print(churros_project.status)
