%Este programa tra�a a curva de conjugado do motor de indu��o
%Feito por Pedro Terra
% Em 28 de setembro de 2019
% Ultima altera��o em 28 de setembro de 2019

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%  Dados do Motor                          %
%                                          %
% Trif�sico, conex�o estrela, tens�o 220v  %
% Par�metros:                              %
%  r1= 0,294    r2= 0,144                  %
%                                          %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Faxina

clc              % limpa a janela de comando
clear            % limpa a �rea de trabalho
close all        % fecha todas as janelas gr�ficas

% Declara��o e atribui��o de valores constantes

r1=0.294;               % resist�ncia do estator
r2=0.144;               % resist�ncia do rotor
x1=0.503;               % reat�ncia do estator
x2=0.209;               % reat�ncia do rotor
xm=13.250;              % reat�ncia de magnetiza��o
q=3;                    % n�mero de fases
VL=220;                 % tens�o de linha
V1=VL/sqrt(3);          % tens�o de fase
f=60;                   % frequ�ncia da rede
P=6;                    % n�mero de polos
PavPhf= 403;            % Perdas mecanicas e magneticas
ws=(4*pi*f)/P;          % velocidade sincorna rad/s

Vo= 122.4;              % tens�o de thevenin
Ro= 0.27;               % resist�ncia de thevenin
Xo= 0.49;               % reat�ncia de thevenin
s= 1:-0.001:0.001;      % vetor escorregamento de 1000 posi��es. (de 1 at� 0.001)

uns= ones(1,length(s)); % vetor de colunas de valor unit�rio que d� origem aos vet da f�rmula. (segue o tamanho do vetor s para que as contas possam ser feitas
r2vet= r2*uns;          % vetor com r2's [r2,r2,r2,r2....]
r2ss= r2vet./s;         % divido o vetor r2 para cada posi��o hom�loga ao vetor s
Vovet= Vo*uns;          % vetor com Vo's [Vo,Vo,Vo....]
Rovet= Ro*uns;          % vetor com Vo's [Ro,Ro,Ro....]
Xovet= Xo*uns;          % vetor com Vo's [Xo,Xo,Xo....]
x2vet= x2*uns;          % vetor com Vo's [x2,x2,x2....]

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Velocidad Mec�nica
ns= (120*f)/P;
nsvet= ns*uns;
nvet= nsvet-(s.*nsvet);
wvet= (2*pi/60)*nvet;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Torque da Carga

Tc= ((wvet.^2)/200)-(wvet/5)+(30*uns); %Fun��o dada no enunciado

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Corrente do Rotor

denominadorIr=sqrt(((Rovet+r2ss).^2)+((Xovet+x2vet).^2)) %soma matricial n�o necessita de ponto, ele soma posi��o por posi��o
Ir= Vovet./denominadorIr

Pg= q*r2ss.*(Ir.^2);

Td= (1/ws)*Pg;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Tra�ar Gr�fcos

figure(1)  % Todo comando de gr�fico estar� na figura 1 at� eu inserir uma pr�xima figura

plot(s,Td,'k','linewidth',3) %linha cont�nua, da cor magenta, com espessura 3
hold on
plot(s,Tc,'b','linewidth',2)
hold off
grid on
xlabel('s')
ylabel('Td e Tc [Nm]')
s: set(gca,'xdir','reverse');
%coordTmax= ginput(1);
legend('Motor','Carga')

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

figure(2)  

plot(s,Tc,'b','linewidth',2)

grid on
xlabel('s')
ylabel('Td e Tc [Nm]')
s: set(gca,'xdir','reverse');

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

figure(3)  
plot(s,Td,'k','linewidth',3) %linha cont�nua, da cor magenta, com espessura 3

grid on
xlabel('s')
ylabel('Td e Tc [Nm]')
s: set(gca,'xdir','reverse');


axis([0.19 0.2 175 175.5])

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

figure(4)  % 
plot(s,Td,'k','linewidth',3) %linha cont�nua, da cor magenta, com espessura 3

grid on
xlabel('s')
ylabel('Td e Tc [Nm]')
s: set(gca,'xdir','reverse');
%coordTmax= ginput(1);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

figure(5)  % 
plot(s,Td,'k','linewidth',3) %linha cont�nua, da cor magenta, com espessura 3
hold on
plot(s,Tc,'b','linewidth',2)
hold off

grid on
axis([0.0 0.1 60 100])

xlabel('s')
ylabel('Td e Tc [Nm]')
s: set(gca,'xdir','reverse');
legend('Motor','Carga')