% Proposiciones

prop(1,fiebreEscalofrios,p)
prop(2,tos,p)
prop(3,dificultadRespirar,p)
prop(4,fatiga,p)
prop(5,dolorMuscular,p)
prop(6,dolorCabeza,p)
prop(7,perdidaOlfato,p)
prop(8,dolorGarganta,p)
prop(9,congestionMoqueo,p)
prop(10,nauseasVomitos,p)
prop(11,Diarrea,p)

% Preposicion inferible

prop(100,'Covid-19',i)

clase(l,objetivos, [100])

% Las reglas

regla(1,y,[1,2,3,4,5,6,7,8,9,10,11],100,0.7)