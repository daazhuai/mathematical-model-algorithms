% 自定义求解器
% optimiproblem：优化问题；ObjectiveSense：目标函数求最大值
prob = optimproblem('ObjectiveSense','max')
c = [4;3];
b = [10;8;7];
a = [2,1;1,1;0,1];
% 决策变量2维
x = optimvar('x',2,'LowerBound',0);
% 设置优化问题的目标函数和约束条件
prob.Objective = c'*x;
prob.Constraints.con = a*x <= b;
% 求解
[sol,fval,flag,out] = solve(prob)
sol.x