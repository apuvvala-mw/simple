function plan = buildfile()
plan = buildplan(localfunctions);
plan.DefaultTasks = "test";
end

function testTask(~)
results = runtests("tests");
assertSuccess(results);
end