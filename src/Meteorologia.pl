% Las preguntas

vientos_menores_63km/h(X):-nl, write(X), write('existe vientos menores a 63km/h?[s/n]: '), read(R),R=s.
nubosidad(X):-nl, write(X), write('existe nubosidad intensa?[s/n]: '), read(R),R=s.
precipitaciones(X):-nl, write(X), write('existe precipitaciones intensa?[s/n]: '), read(R),R=s.
aumento_marea_oleaje(X):-nl, write(X), write('aumento en la marea y en el oleaje en las zonas costeras? [s/n]: '), read(R),R=s.
vientos_mayores_63km/h(X):-nl, write(X), write('existe vientos mayores a 63km/h?[s/n]: '), read(R),R=s.
vientos_mayores_116km/h(X):-nl, write(X), write('existe vientos mayores a 116km/h?[s/n]: '), read(R),R=s.

% las reglas 

depresion_tropical(X):-vientos_menores_63km/h (X),nubosidad(X),precipitaciones(X),aumento_marea_oleaje(X),.
tormenta tropical(X):-vientos_mayores_63km/h(X),nubosidad(X),precipitaciones(X),aumento_marea_oleaje(X),.
huracan(X):-vientos_vientos_mayores_116km/h(X),nubosidad(X),precipitaciones(X),aumento_marea_oleaje(X),.

% Pronostico

pronostico(X):- write('Se investiga depresion_tropical'), depresion_tropical(X), nl, write(X), write('se pronostica depresion tropical.'), fail.
pronostico(X):- write('Se investiga tormenta tropical'), tormenta tropical(X), nl, write(X), write('se pronostica tormenta tropical.').
pronostico(X):- write('Se investiga huracan'), huracan(X), nl, write(X), write('tiene se pronostica huracan.').
pronostico(X):- write('No se logro ningun pronostico').