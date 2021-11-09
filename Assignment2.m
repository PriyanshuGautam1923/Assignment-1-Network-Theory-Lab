function [Vs,Is] = Assignment2(FileName)
%UNTITLED11 Summary of this function goes here
%   Detailed explanation goes here
fileID = fopen(FileName,'r');
formatSpec = '%f';
A= fscanf(fileID,formatSpec);
Master_Matrix=MasterMatrixCreater(A);
display(Master_Matrix);
B=bgenerator(Master_Matrix);
display(B);
Q=looptocutset(B);
Z=Impedance_Matrix(zgenerator(Master_Matrix));
Y=Y_Generator(Z);
display(Y);
Vg=Vg_Generator(Master_Matrix);
display(Vg);
Ig=Ig_Generator(Master_Matrix);
display(Ig);
J=J_Generator(Q,Ig,Y,Vg);
display(J);
LHMV=LHMV_Generator(Q,Y,J);
display(LHMV);
RHMV=RHMV_Generator(Vg,B,Master_Matrix);
Vs=Vs_Generator(LHMV,RHMV);
E=E_Generator(B,Ig,Z,Vg);
LHMI=LHMI_Generator(B,Z,E);
RHMI=RHMI_Generator(Ig,Q,Master_Matrix);
Is=Is_Generator(LHMI,RHMI);
Vs=vpa(Vs,4);
Is=vpa(Is,4);
end

