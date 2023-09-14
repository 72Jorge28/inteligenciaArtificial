% Los hechos 

varon(pepe).
varon(pepin).
hembra(maria)
hembra(mary).
hembra(elsa).
hembra(lolita).
progenitor(pepe,pepin).
progenitor(pepe,mary).
progenitor(maria,pepin).
progenitor(maria,mary).
progenitor(pepin,lolita).
progenitor(elsa,lolita).

% Las reglas

padre(x,y):- varon(x), progenitor(x,y).
madre(x,y):-hembra(x),progenitor(x,y).
hijo(x.y):-varon(x),progenitor(y,x).
hija(x.y):-hembra(x),progenitor(y,x).


