superior(X, Y) :- chefe(X, Y).
superior(X, Y) :-
    chefe(C, Y),
    superior(X, C).
