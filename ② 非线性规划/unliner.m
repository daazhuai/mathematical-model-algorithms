% 年收益率方差 → 投资风险
% 年收益率均值 → 各产品收益率
% 1)
mu = mean(a);
% 计算各个投资产品间收益率协方差，用于进一步计算方差
F = cov(a);
x = optimvar('x',3,'LowerBound',0);
x0.x = rand(3,1);
prob1 = optimproblem;
prob1.Objective = x'* F * x;
prob1.Contraints.con1 = sum(x) == 1;
prob1.Contraints.con2 = mu * x >= 0.15;
[sol1,fval1,flag1,out1] = solve(prob1,x0);
% 显示最优解
sol.x

% 2）
prob2 = optimproblem('ObjectiveSense','max');
prob2.Objective = mu * x;
prob2.Contraints.con1 = sum(x) == 1;
prob2.Contraints.con2 = x'* F * x >= 0.09;
[sol2,fval2,flag2,out2] = solve(prob2,x0);
% 显示最优解
sol.x
