% Gender facts
male(ali_father).
male(khalid).
male(muhannad).
male(battal).
male(ali_son).

female(hana).
female(joory).
female(ghaida).
female(yassmine).

% Parent facts
parent(ali_father, joory).
parent(hana, joory).

parent(ali_father, khalid).
parent(hana, khalid).

parent(ali_father, muhannad).
parent(hana, muhannad).

parent(ali_father, battal).
parent(hana, battal).

parent(joory, yassmine).

parent(khalid, ali_son).
parent(ghaida, ali_son).

% Family relationship rules
father(X, Y) :-    male(X),    parent(X, Y).
mother(X, Y) :-    female(X),    parent(X, Y).
sister(X, Y) :-    female(X),    parent(P, X),    parent(P, Y),    X \= Y.
brother(X, Y) :-    male(X),    parent(P, X),    parent(P, Y),    X \= Y.
