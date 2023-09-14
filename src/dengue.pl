% Programa para diagnostico de dengue

% Las preguntas

malestar(x):-nl, write(x), write('tiene malestar?[s/n]: '), read(R),R=s.
fiebre(x):-nl, write(x), write('tiene fiebre?[s/n]: '), read(R),R=s.
tos(x):-nl, write(x), write('tiene tos?[s/n]: '), read(R),R=s.
sec_nas(x):-nl, write(x), write('tiene secreciones nasales?[s/n]: '), read(R),R=s.
dolor_art_mus(x):- nl, write(x), write ('tiene dolor en las articulaciones o muscular? [s/n]: '), read(R),R=s.
rash(x):- nl, write(x), write('tiene rash? [s/n]: '), read(R), R=s.

% las reglas 

gripe(x):-malestar(x),fiebre(x),tos(x),sec_nas(x).
denge(x):-malestar(x),fiebre(x),dolor_art_mus(pepe),rash(x).

% El diagnostico

diagnostico(x):- write('Se investiga gripe'), gripe(x), nl, write(x), write('tiene sintoma de gripe'), fail.
diagnostico(x):- write('Se investiga dengue'), dengue(x), nl, write(x), write('tiene sintoma de dengue').
diagnostico(x):- write('no se logro un diagnostico').