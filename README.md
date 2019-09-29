https://www.matthewchilders.com/product/nikola-tesla-poster/

https://www.blogdoprofessorcarlao.com.br/2014/04/motor-de-inducao-trifasico.html

https://docente.ifsc.edu.br/rafael.grebogi/MaterialDidatico/Eletromecanica/Eletricidade%20Industrial%20(OLD)/WEG-curso-dt-6-motores-eletricos-assincrono-de-alta-tensao-artigo-tecnico-portugues-br.pdf

No campo de acionamentos industriais, que é o objeto deste curso, estima-se que de 70 a 80% da energia elétrica
consumida pelo conjunto de todas as indústrias seja transformada em energia mecânica através dos motores elétricos.
Isto significa que, admitindo-se um rendimento médio da ordem de 80% do universo de motores em aplicações industriais,
cerca de 15% da energia elétrica industrial transforma-se em perdas nos motores.



https://edisciplinas.usp.br/pluginfile.php/31672/mod_resource/content/1/Teoria.pdf

Os motores elétricos são máquinas que possuem a capacidade de converter a energia elétrica em energia mecânica. Os motores combinam as vantagens da energia elétrica com o baixo custo, facilidade de transporte, limpeza e simplicidade no comando. Os motores de indução possuem uma construção aparentemente simples e seus custos são reduzidos, como por exemplo manutenção, fabricação e montagem, além de fácil adaptação às cargas de diversos tipos.

Podemos separar os motores por uma infinidade de características, mas o fator determinante, que diferencia as classes de motores é a sua fonte de energia, pois existem os motores que funcionam com corrente contínua e outros com corrente alternada, e alguns podem usar as duas correntes em certas situações, além disso existem os motores monofásicos e finalmente os motores trifásicos.
Os motores de corrente alternada (AC), que também são conhecidos como motor assíncrono trifásico ou motor de indução são os motores mais utilizados, devido a uma série de vantagens, como por exemplo o baixo custo em manutenção, montagem, fabricação e simplicidade em relação aos motores de corrente contínua, e devido a distribuição de energia elétrica nas instalações serem feitas em corrente alternada.

Motores trifásicos são encontrados facilmente dentro das indústrias, como por exemplo dentro do torno, fresa, esteiras e diversas outras máquinas, mas fora das indústrias podemos encontrar um motor trifásico em um elevador ou na escada rolante por exemplo.
Para que fique mais claro o entendimento sobre como os motores trifásicos de indução funcionam é importante saber um pouco sobre algumas partes do motor, que neste caso são o rotor e o estator.

O rotor é tudo que gira em torno de seu próprio eixo, de forma a produzindo movimentos de rotação. Os rotores estão presentes em qualquer máquina rotativa, como turbinas e compressores por exemplo.
Por outro lado, o estator é a parte de um motor ou gerador elétrico que se mantém fixa à carcaça de um motor e tem por função conduzir o fluxo magnético. Assim como nas bobinas, é formado no rotor um campo magnético capaz de induzir uma corrente elétrica.
O princípio de funcionamento para o motor de indução se baseia na criação de um campo magnético rotativo, ou campo girante. Este campo girante surge a partir da aplicação de tensão alternada no estator, que a partir de então ele consegue produzir um campo magnético rotativo que atravessa os condutores do rotor.

Este campo magnético variável induz no rotor uma força eletromotriz (f.e.m) que, por sua vez, cria o seu próprio campo magnético girante. O campo magnético girante criado pelo rotor, ao “tentar” se alinhar com o campo girante do estator, produz um movimento de rotação no rotor, ou seja, o rotor começa a girar continuamente, sendo que a velocidade do motor é inversamente proporcional ao número de polos que ele possui, ou seja, quanto maior a quantidade de polos do motor menor será a sua velocidade.













# Estudo-motor-de-indução-trifásico

Estudo de um motor de indução trifásico, onde analisamos graficamente seu comportamento.

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

## Enunciado:

Um motor de indução trifásico, ligado em estrela, 220V, 10hp, 60Hz, 6 pólos, tem as
seguintes constantes, em ohms por fase, do circuito equivalente referido ao estator:

r1 = 0,294 x1 = 0,503j r2 = 0,144 x2 = 0,209j xm = 13,250j

As perdas totais por atrito, ventilação e no núcleo, podem ser consideradas
constantes e valem 403W para qualquer carga.

Esse motor deve acionar uma carga mecânica com conjugado resistente (Tc) dado
pela expressão seguinte:

Tc = (w^2)/200 - w/5 + 30

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

## Pede-se:

a) Representar o circuito equivalente por fase e o circuito equivalente de
Thévenin do motor.

b) Encontrar os valores da tensão de Thévenin (Vo) e da impedância de
Thévenin (Zo).

c) Com o auxílio do circuito equivalente de Thévenin, obter uma expressão
para a corrente do rotor Ir.

d) Obter uma expressão para o conjugado eletromagnético desenvolvido (Td) a
partir do equivalente de Thévenin.

e) Provar que o conjugado desenvolvido pela máquina assíncrona, operando
como motor, é uma função quadrática da tensão de alimentação V1.

f) Utilizar o equivalente de Thévenin e o teorema da máxima transferência de
potência para obter a condição de máximo conjugado desse motor.

g) Calcular, manualmente, o conjugado de partida e o conjugado máximo do
motor, com o auxílio das expressões obtidas nos itens (d) e (f).

h) Traçar, com o auxílio do Matlab®, em um mesmo sistema de eixos
coordenados, as curvas de conjugado do motor (Td x s) e da carga (Tc x s).
Atenção: Você deve utilizar pelo menos 100 pontos de valores de
escorregamento em seus gráficos.

i) Verificar, graficamente, se o escorregamento de máximo conjugado (sMT) e o
conjugado máximo (TMax) desenvolvido pelo motor correspondem aos
valores calculados manualmente.

j) Verificar se o motor pode partir a carga apresentada, em se podendo,
determinar graficamente a velocidade final de operação do conjunto em
regime permanente.

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
