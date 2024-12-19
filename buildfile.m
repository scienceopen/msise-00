function plan = buildfile
plan = buildplan(localfunctions);
plan.DefaultTasks = "test";
plan("test").Dependencies = "check";
end

function checkTask(~)
% Identify code issues (recursively all Matlab .m files)
issues = codeIssues;
assert(isempty(issues.Issues), formattedDisplayText(issues.Issues))
end

function testTask(context)
r = runtests(context.Plan.RootFolder, IncludeSubfolders=true, strict=true);
assert(~isempty(r), "No tests were run")
assertSuccess(r)
end
