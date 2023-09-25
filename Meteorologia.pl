% Proposiciones

prop(1,menor63,p). % vientos menores a 63km/h
prop(2,nubosidad,p). % existe nubosidad intensa
prop(3,presipitaciones,p). % existe precipitaciones intensas
prop(4,aumentoMarea,p). % aumento en la marea y en el oleaje en las zonas costeras
prop(5,mayores63,p). % existe vientos mayores a 63km/h
prop(6,mayores116,p). % existe vientos mayores a 116km/h

% Proposicion inferible

prop(100,'depresionTropical',i). % Es una depresion tropical
prop(101,'tormentaTropical',i). % Es una tormenta tropical
prop(102,'huracan',i). % Es un huracan

clase(1,objetivos, [100,101,102]).

% Las reglas

regla(1,y,[1,2,3,4],100,0.7).
regla(1,y,[5,2,3,4],101,0.6).
regla(1,y,[6,2,3,4],102,0.9).
