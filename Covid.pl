% Proposiciones

prop(1,'tiene fiebre o escalofrios',p).
prop(2,'tiene tos',p).
prop(3,'tiene dificultad al respirar',p).
prop(4,'tiene fatiga',p).
prop(5,'tiene dolor muscular',p).
prop(6,'tiene dolor de cabeza',p).
prop(7,'tiene perdida del olfato',p).
prop(8,'tiene dolor de garganta',p).
prop(9,'tiene congestion o moqueo',p).
prop(10,'tiene nauseas o vomitos',p).
prop(11,'tiene diarrea',p).

% Preposicion inferible

prop(100,'Covid-19',i).

% Las reglas

regla(1,y,[1,2,3,4,5,6,7,8,9,10,11],100,0.7).