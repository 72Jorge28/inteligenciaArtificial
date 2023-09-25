% Proposiciones

prop(1,malestar,p)
prop(2,fiebre,p)
prop(3,tos,p)
prop(4,secrecionesNasales,p)
prop(5,dolorArticulacionesMusculares,p)
prop(6,rash,p)

% Proposicion inferible

prop(100,'gripe',i)
prop(101,'dengue',i)

clase(l,objetivos, [100,101])

% Las reglas

regla(1,y,[1,2,3,4],100,0.6)
regla(1,y,[1,2,5,6],101,0.8)