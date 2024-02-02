clearvars;
clc;

alt = linspace(0,10000,101);
[T,a,P,rho] = atmoscoesa(alt);

Toof = T';
aoof = a';
Poof = P';
rhoof = rho';
altoof = alt';

atmoarray = [altoof,Toof,aoof,Poof,rhoof];
atmotable = array2table(atmoarray,'Variablenames',{'tVol','tTemp','tMach','tPressure','tDensity'});

plot(T,alt,a,alt,P,alt,rho,alt);

plot(P,alt);

%{
plot(a,alt);
plot(P,alt);
plot(rho,alt);

Formatting
legend("T","a","P","rho")
%}
