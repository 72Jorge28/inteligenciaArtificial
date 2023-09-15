% Las preguntas

aumento_sed(X):-nl, write(X), write('tiene aumento de la sed? [s/n]: '), read(R),R=s.
miccion_frecuente(X):-nl, write(X), write('tiene miccion frecuente? [s/n]: '), read(R),R=s.
llagas_cicatrizacion_lenta(X):-nl, write(X), write('tiene llagas de cicatrizacion lenta? [s/n]: '), read(R),R=s.
zona_piel_osurecida(X):-nl, write(X), write('tiene zonas de piel osurecida? [s/n]: '), read(R),R=s.
perdida_peso_involuntaria(X):-nl, write(X), write('tiene perdida de peso involuntaria? [s/n]: '), read(R),R=s.
cansancio(X):-nl, write(X), write('tiene cansancio? [s/n]: '), read(R),R=s.
infecciones_frecuentes(X):-nl, write(X), write('tiene infecciones frecuentes? [s/n]: '), read(R),R=s.
vision_borrosa(X):-nl, write(X), write('tiene vision borrosa? [s/n]: '), read(R),R=s.
aumento_hambre(X):-nl, write(X), write('tiene aumento del hambre? [s/n]: '), read(R),R=s.


% las reglas 

diabetes_tipoII(X):-aumento_sed(X), miccion_frecuente(X), llagas_cicatrizacion_lenta(X), zona_piel_osurecida(X), perdida_peso_involuntaria(X), cansancio(X), infecciones_frecuentes(X), vision_borrosa(X), aumento_hambre(X):.



% Diagnostico

diagnostico(X):- write('Se investiga diabetes tipo II'), diabetes tipo II(X), nl, write(X), write('tiene sintoma de diabetes. '), fail.
diagnostico(X):- write('No se logro ningun diagnostico').