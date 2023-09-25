% Proposiciones

prop(1,aumentoSed,p)
prop(2,miccion,p)
prop(3,llagasCicatrizacionLenta,p)
prop(4,zonaPielOscurecida,p)
prop(5,perdidaPeso,p)
prop(6,cansancio,p)
prop(7,infeccionesFrecuentes,p)
prop(8,visionBorrosa,p)
prop(9,aumentoHambre,p)

% Preposicion inferible

prop(100,'DiabetesTipoII',i)

clase(l,objetivos, [100])

% Las reglas

regla(1,y,[1,2,3,4,5,6,7,8,9],100,0.9)