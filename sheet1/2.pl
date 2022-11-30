% a)
leciona(algoritmos, adalberto).
leciona(basesDeDados, bernardete).
leciona(compiladores, capitolino).
leciona(estatistica, diogenes).
leciona(redes, ermelinda).

frequenta(algoritmos, alberto).
frequenta(algoritmos, bruna).
frequenta(algoritmos, cristina).
frequenta(algoritmos, diogo).
frequenta(algoritmos, eduarda).

frequenta(basesDeDados, antonio).
frequenta(basesDeDados, bruno).
frequenta(basesDeDados, cristina).
frequenta(basesDeDados, duarte).
frequenta(basesDeDados, eduardo).

frequenta(compiladores, alberto).
frequenta(compiladores, bernardo).
frequenta(compiladores, clara).
frequenta(compiladores, diana).
frequenta(compiladores, eurico).

frequenta(estatistica, antonio).
frequenta(estatistica, bruna).
frequenta(estatistica, claudio).
frequenta(estatistica, duarte).
frequenta(estatistica, eva).

frequenta(redes, alvaro).
frequenta(redes, beatriz).
frequenta(redes, claudio).
frequenta(redes, diana).
frequenta(redes, eduardo).

% b)
% | ?- leciona(UC, diogenes).
% | ?- leciona(_UC, felismina).
% | ?- frequenta(UC, claudio).
% | ?- frequenta(_UC, dalmindo).
% | ?- leciona(_UC, bernardete), frequenta(_UC, eduarda).
% | ?- frquenta(_UC, alberto), frequenta(_UC, alvaro).

% c)
aluno(X, Y) :- leciona(UC, X), frequenta(UC, Y).
professor(X, Y) :- aluno(Y, X).
colegas(X, Y) :- frequenta(UC, X), frequenta(UC, Y), X \= Y;
                 leciona(UC1, X), leciona(UC2, Y), X \= Y.
