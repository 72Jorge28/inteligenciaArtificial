% Proposiciones

prop(1,'aumento en la sed',p)
prop(2,'presenta miccion',p)
prop(3,'presenta llagas de cicatrizacion lenta',p)
prop(4,'presenta zona de piel oscurecida',p)
prop(5,'perdida de peso involuntaria',p)
prop(6,'presenta cansancio',p)
prop(7,'infecciones frecuentes',p)
prop(8,'vision borrosa',p)
prop(9,'aumento en el hambre',p)

% Preposicion inferible

prop(100,'DiabetesTipoII',i)

clase(1,objetivos, [100])

% Las reglas

regla(1,y,[1,2,3,4,5,6,7,8,9],100,0.9)