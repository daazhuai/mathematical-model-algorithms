% �������ʷ��� �� Ͷ�ʷ���
% �������ʾ�ֵ �� ����Ʒ������
% 1)
mu = mean(a);
% �������Ͷ�ʲ�Ʒ��������Э������ڽ�һ�����㷽��
F = cov(a);
x = optimvar('x',3,'LowerBound',0);
x0.x = rand(3,1);
prob1 = optimproblem;
prob1.Objective = x'* F * x;
prob1.Contraints.con1 = sum(x) == 1;
prob1.Contraints.con2 = mu * x >= 0.15;
[sol1,fval1,flag1,out1] = solve(prob1,x0);
% ��ʾ���Ž�
sol.x

% 2��
prob2 = optimproblem('ObjectiveSense','max');
prob2.Objective = mu * x;
prob2.Contraints.con1 = sum(x) == 1;
prob2.Contraints.con2 = x'* F * x >= 0.09;
[sol2,fval2,flag2,out2] = solve(prob2,x0);
% ��ʾ���Ž�
sol.x
