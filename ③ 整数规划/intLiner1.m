prob = optimproblem;
% 'Type','integer'限制了决策变量为整数
x = optimvar('x',6,'Type','integer','LowerBound',0);
prob.Objective = sum(x);
% 约束条件为6个线性式
con = optimconstr(6);
a = [35,40,50,45,55,30];
con(1) = x(1)+x(6) >= 35;
for i =1:5
    con(i+1) = x(i)+x(i+1)>=a(i+1);
end
prob.Constraints.con = con;
[sol,fval,flag] = solve(prob), sol.x