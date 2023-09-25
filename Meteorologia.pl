% Proposiciones

prop(1,menor63,p)
prop(2,nubosidad,p)
prop(3,presipitaciones,p)
prop(4,aumentoMarea,p)
prop(5,mayores63,p)
prop(6,mayores116,p)

% Preposicion inferible

prep(100,'depresionTropical',i)
prep(101,'tormentaTropical',i)
prep(102,'huracan',i)

clase(l,objetivos, [100,101,102])

% Las reglas

regla(1,y,[1,2,3,4],100,0.7)
regla(1,y,[5,2,3,4],101,0.6)
regla(1,y,[6,2,3,4],102,0.9)