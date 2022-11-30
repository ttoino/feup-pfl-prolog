% a)
% gender
female(grace).
female(dede).
female(gloria).
female(barb).
female(claire).
female(pameron).
female(haley).
female(alex).
female(lily).
female(poppy).

male(frank).
male(jay).
male(javier).
male(merle).
male(phil).
male(mitchel).
male(joe).
male(manny).
male(cameron).
male(bo).
male(dylan).
male(luke).
male(rexford).
male(calhoun).
male(george).

% relationships
parent(grace, phil).
parent(frank, phil).
parent(dede, claire).
parent(jay, claire).
parent(dede, mitchel).
parent(jay, mitchel).
parent(jay, joe).
parent(gloria, joe).
parent(gloria, manny).
parent(javier, manny).
parent(barb, cameron).
parent(merle, cameron).
parent(barb, pameron).
parent(merle, pameron).
parent(phil, haley).
parent(claire, haley).
parent(phil, alex).
parent(claire, alex).
parent(phil, luke).
parent(claire, luke).
parent(mitchel, lily).
parent(cameron, lily).
parent(mitchel, rexford).
parent(cameron, rexford).
parent(pameron, calhoun).
parent(bo, calhoun).
parent(dylan, george).
parent(haley, george).
parent(dylan, poppy).
parent(haley, poppy).

% b)
% | ?- female(haley).
% | ?- male(gil).
% | ?- parent(frank, phil).
% | ?- parent(P, claire).
% | ?- parent(gloria, C).
% | ?- parent(jay, _P), parent(_P, GC).
% | ?- parent(_P, lily), parent(GP, _P).
% | ?- parent(alex, _C).
% | ?- parent(jay, C), \+parent(gloria, C).

% c)
% rules
father(X, Y) :- male(X), parent(X, Y).
mother(X, Y) :- female(X), parent(X, Y).
grandparent(X, Y) :- parent(X, Z), parent(Z, Y).
grandfather(X, Y) :- male(X), grandparent(X, Y).
grandmother(X, Y) :- female(X), grandparent(X, Y).
siblings(X, Y) :- parent(P1, X), parent(P2, Y), parent(P1, X), parent(P2, Y), P1 \= P2, X \= Y.
halfSiblings(X, Y) :- parent(P, X), parent(P, Y), X \= Y.
neutralUncle(X, Y) :- siblings(X, P), parent(P, Y).
uncle(X, Y) :- male(X), neutralUncle(X, Y).
aunt(X, Y) :- female(X), neutralUncle(X, Y).
cousins(X, Y) :- parent(P, X), neutralUncle(P, Y), X \= Y.

% d)
% | ?- cousins(haley, lily).
% | ?- father(F, luke).
% | ?- uncle(U, lily).
% | ?- grandmother(GM, _GC).
% | ?- siblings(S1, S2).
% | ?- halfSiblings(HS1, HS2).

% e)
wedding(jay, gloria, '2008').
wedding(jay, dede, '1968').
divorce(jay, dede, '2003').
