parent(pam,bob).
parent(tom,bob).
parent(tom,liz).
parent(bob,ann).
parent(bob,pat).
parent(pat,jim).
female(pam).
female(liz).
female(pat).
female(ann).
male(tom).
male(bob).
male(jim).
offspring(Y,X):-parent(X,Y).
mother(X,Y):-parent(X,Y),female(X).
father(X,Y):-parent(X,Y),male(X).
grandparent(X,Y):-parent(X,Z),parent(Z,Y).
sister(X,Y):-parent(Z,X),parent(Z,Y),not(X==Y),female(X).
haschild(X):-parent(X,Y).
hastwochild(X):-parent(X,Y),parent(X,Z),not(Y==Z).
brother(X,Y):-parent(Z,X),parent(Z,Y),not(X==Y),male(X).
uncle(X,Y):-parent(Z,Y),brother(X,Z).
predecessor(X, Z) :- parent(X, Z).
predecessor(X, Z) :- parent(X, Y),predecessor(Y, Z).
