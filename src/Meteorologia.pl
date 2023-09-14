% Las preguntas

vientos_menores_63km/h(X):-nl, write(X), write('tiene fiebre?[s/n]: '), read(R),R=s.
tos(X):-nl, write(X), write('tiene tos?[s/n]: '), read(R),R=s.
sec_nas(X):-nl, write(X), write('tiene secreciones nasales?[s/n]: '), read(R),R=s.
dolor_art_mus(X):-nl, write(X), write('tiene dolor en las articulaciones o muscular? [s/n]: '), read(R),R=s.
rash(X):- nl, write(X), write('tiene rash? [s/n]: '), read(R), R=s.

% las reglas 

gripe(X):-malestar(X),fiebre(X),tos(X),sec_nas(X).
dengue(X):-malestar(X),fiebre(X),dolor_art_mus(X),rash(X).

% El diagnostico

diagnostico(X):- write('Se investiga gripe'), gripe(X), nl, write(X), write('tiene sintoma de gripe.'), fail.
diagnostico(X):- write('Se investiga dengue'), dengue(X), nl, write(X), write('tiene sintoma de dengue').
diagnostico(X):- write('No se logro un diagnostico').