% a)
piloto(lamb).
piloto(besenyei).
piloto(chambliss).
piloto(maclean).
piloto(mangold).
piloto(jones).
piloto(bonhomme).

equipa(lamb, breitling).
equipa(besenyei, redBull).
equipa(chambliss, redBull).
equipa(maclean, mediterraneanRacingTeam).
equipa(mangold, cobra).
equipa(jones, matador).
equipa(bonhomme, matador).

aviao(lamb, mx2).
aviao(besenyei, edge540).
aviao(chambliss, edge540).
aviao(maclean, edge540).
aviao(mangold, edge540).
aviao(jones, edge540).
aviao(bonhomme, edge540).

circuito(istanbul).
circuito(budapest).
circuito(porto).

venceu(jones, porto).
venceu(mangold, budapest).
venceu(mangold, istanbul).

gates(istanbul, 9).
gates(budapest, 6).
gates(porto, 5).

venceu(X, Y) :- venceu(Z, Y), equipa(Z, X).

% b)
% | ?- venceu(P, porto), piloto(P).
% | ?- venceu(E, porto), \+piloto(E).
% | ?- gates(C, _G), _G > 8.
% | ?- aviao(P, _A), _A =\= edge540.
% | ?- venceu(P, _C1), venceu(P, _C2), _C1 =\= _C2, piloto(P).
% | ?- aviao(_P, A), venceu(_P, porto).
