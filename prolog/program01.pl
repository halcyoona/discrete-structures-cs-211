

male(christopher).   
male(john).     
male(david). 
female(sara).  
female(sana).  
female(katherine). 

parent(david, katherine).
parent(sara, sana).
parent(david, john). 

mother(X, Y):- female(X), parent(X,Y).
father(X, Y):- male(X), parent(X, Y).
sibling(X, Y):- parent(Z, X), parent(Z,Y).
sister(X, Y):- female(X), sibling(X, Y).
aunt(X, Y):- female(X), parent(Z, Y), sister(X, Z); sister(X,Z).