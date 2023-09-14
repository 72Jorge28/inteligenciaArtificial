% Las preguntas

malestar(x):- nl, write(x), write ('tiene malestar? [s/n]: '), read(R), R=s.
fiebre(x):- nl, write(x), write('tiene friebre? [s/n]: '), read(R), R=s.
tos(x):- nl, write(x), write('tiene tos? [s/n]: '), read(R),R=s.
secreciones_nasales(x):- nl, write(x), write('tiene secreciones nasales? [s/n]: '), read(R), R=s.
dolor_cabeza(x):- nl, write(x), write('tiene dolor de cabeza? [s/n]: '), read(R), R=s.
dolor_muscular_articulaciones:- nl, write(x), write('tiene dolores musculares y en las articulaciones? [s/n]: '), read(R), R=s.
rash(x):-nl, write(x), write('tiene rash? [s/n]: '), read(R), R=s.
dengue(x):-nl, write(x), write('tiene dengue? [s/n]: '), read(R), R=s.
hemorragia(x):-nl, write(x), write('tiene hemorragia? [s/n]: '), read(R), R=s.

% Las reglas

gripe(X):- malestar(X), fiebre(X), tos(X), secreciones_nasales(X).
dengue(X):- malestar(X), fiebre(X), dolor_cabeza, dolor_articulaciones_muscular(X), rash(X).
dengue hemorragico(X):- dengue(X), hemorragia_inisual.

% Diagnostico

diagnostico(X):- write('Se investiga gripe'), gripe(X), nl, write(X), write('tiene sintoma de gripe.'), fail.
diagnostico(X):- write('Se investiga dengue'), dengue(X), nl, write(X), write('tiene sintoma de dengue'),fail.
diagnostico(X):- write('se investiga dengue hemorragico'),dengue hemorragico(X), nl, write(X), write('tiene sintoma de dengue').
diagnostico(X):- write('No se logro un diagnostico').