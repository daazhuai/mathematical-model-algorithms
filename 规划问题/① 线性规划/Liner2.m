% �Զ��������
% optimiproblem���Ż����⣻ObjectiveSense��Ŀ�꺯�������ֵ
prob = optimproblem('ObjectiveSense','max')
c = [4;3];
b = [10;8;7];
a = [2,1;1,1;0,1];
% ���߱���2ά
x = optimvar('x',2,'LowerBound',0);
% �����Ż������Ŀ�꺯����Լ������
prob.Objective = c'*x;
prob.Constraints.con = a*x <= b;
% ���
[sol,fval,flag,out] = solve(prob)
sol.x