data(one).
data(two).
data(three).

cut_test_a(X) :- data(X).
cut_test_a('five').

cut_test_b(X) :- data(X), !.
cut_test_b('five').

cut_test_c(X, Y) :- data(X), !, data(Y).
cut_test_c('five', 'five').

a(X) :- cut_test_a(X), write(X), nl, fail.
% a) | ?- cut_test_a(X), write(X), nl, fail.
% one
% two
% three
% five

b(X) :- cut_test_b(X), write(X), nl, fail.
% b) | ?- cut_test_b(X), write(X), nl, fail.
% one

c(X, Y) :- cut_test_c(X, Y), write(X-Y), nl, fail.
% c) | ?- cut_test_c(X, Y), write(X-Y), nl, fail.
% one-one
% one-two
% one-three
