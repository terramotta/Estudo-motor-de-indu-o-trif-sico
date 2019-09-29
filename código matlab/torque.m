%Este programa traça a curva de conjugado do motor de indução
%Feito por Pedro Terra
% Em 28 de setembro de 2019
% Ultima alteração em 28 de setembro de 2019

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%  Dados do Motor                          %
%                                          %
% Trifásico, conexão estrela, tensão 220v  %
% Parâmetros:                              %
%  r1= 0,294    r2= 0,144                  %
%                                          %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Faxina

clc              % limpa a janela de comando
clear            % limpa a área de trabalho
close all        % fecha todas as janelas gráficas

% Declaração e atribuição de valores constantes

r1=0.294;               % resistência do estator
r2=0.144;               % resistência do rotor
x1=0.503;               % reatância do estator
x2=0.209;               % reatância do rotor
xm=13.250;              % reatância de magnetização
q=3;                    % número de fases
VL=220;                 % tensão de linha
V1=VL/sqrt(3);          % tensão de fase
f=60;                   % frequência da rede
P=6;                    % número de polos
PavPhf= 403;            % Perdas mecanicas e magneticas
ws=(4*pi*f)/P;          % velocidade sincorna rad/s

Vo= 122.4;              % tensão de thevenin
Ro= 0.27;               % resistência de thevenin
Xo= 0.49;               % reatância de thevenin
s= 1:-0.001:0.001;      % vetor escorregamento de 1000 posições. (de 1 até 0.001)

uns= ones(1,length(s)); % vetor de colunas de valor unitário que dá origem aos vet da fórmula. (segue o tamanho do vetor s para que as contas possam ser feitas
r2vet= r2*uns;          % vetor com r2's [r2,r2,r2,r2....]
r2ss= r2vet./s;         % divido o vetor r2 para cada posição homóloga ao vetor s
Vovet= Vo*uns;          % vetor com Vo's [Vo,Vo,Vo....]
Rovet= Ro*uns;          % vetor com Vo's [Ro,Ro,Ro....]
Xovet= Xo*uns;          % vetor com Vo's [Xo,Xo,Xo....]
x2vet= x2*uns;          % vetor com Vo's [x2,x2,x2....]

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Velocidad Mecânica
ns= (120*f)/P;
nsvet= ns*uns;
nvet= nsvet-(s.*nsvet);
wvet= (2*pi/60)*nvet;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Torque da Carga

Tc= ((wvet.^2)/200)-(wvet/5)+(30*uns); %Função dada no enunciado

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Corrente do Rotor

denominadorIr=sqrt(((Rovet+r2ss).^2)+((Xovet+x2vet).^2)) %soma matricial não necessita de ponto, ele soma posição por posição
Ir= Vovet./denominadorIr

Pg= q*r2ss.*(Ir.^2);

Td= (1/ws)*Pg;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Traçar Gráfcos

figure(1)  % Todo comando de gráfico estará na figura 1 até eu inserir uma próxima figura

plot(s,Td,'k','linewidth',3) %linha contínua, da cor magenta, com espessura 3
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
plot(s,Td,'k','linewidth',3) %linha contínua, da cor magenta, com espessura 3

grid on
xlabel('s')
ylabel('Td e Tc [Nm]')
s: set(gca,'xdir','reverse');


axis([0.19 0.2 175 175.5])

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

figure(4)  % 
plot(s,Td,'k','linewidth',3) %linha contínua, da cor magenta, com espessura 3

grid on
xlabel('s')
ylabel('Td e Tc [Nm]')
s: set(gca,'xdir','reverse');
%coordTmax= ginput(1);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

figure(5)  % 
plot(s,Td,'k','linewidth',3) %linha contínua, da cor magenta, com espessura 3
hold on
plot(s,Tc,'b','linewidth',2)
hold off

grid on
axis([0.0 0.1 60 100])

xlabel('s')
ylabel('Td e Tc [Nm]')
s: set(gca,'xdir','reverse');
legend('Motor','Carga')