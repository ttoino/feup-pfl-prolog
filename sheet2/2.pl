% a)
ancestor(X, Y) :- parent(X, Y).
ancestor(X, Y) :-
    parent(X, P),
    ancestor(P, Y).

% b)
descendant(X, Y) :- parent(Y, X).
descendant(X, Y) :-
    parent(P, X),
    descendant(P, Y).
