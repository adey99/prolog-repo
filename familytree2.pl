female(ritu).
female(mita).
female(amita).
female(sonia).
female(dipti).
male(suman).
male(pradip).
male(rajib).
male(joy).
male(sudip).
parent(ritu,mita).
parent(ritu,sonia).
parent(suman,mita).
parent(suman,pradip).
parent(mita,amita).
parent(pradip,amita).
parent(amita,dipti).
parent(amita,joy).
parent(rajib,sudip).
parent(dipti,sudip).
grandmother(X,Y):- parent(X,Z),parent(Z,Y),female(X).
grandfather(X,Y):- parent(X,Z),parent(Z,Y),male(X).
sister(X,Y):-parent(Z,X),parent(Z,Y),not(X==Y),female(X).
aunt(X,Y):-parent(Z,Y),sister(X,Z).
