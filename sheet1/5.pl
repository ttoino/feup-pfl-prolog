cargo(tecnico, eleuterio).
cargo(tecnico, juvenaldo).
cargo(analista, leonilde).
cargo(analista, marciliano).
cargo(engenheiro, osvaldo).
cargo(engenheiro, porfirio).
cargo(engenheiro, reginaldo).
cargo(supervisor, sisnando).
cargo(supervisor_chefe, gertrudes).
cargo(secretaria_exec, felismina).
cargo(diretor, asdrubal).
chefiado_por(tecnico, engenheiro).
chefiado_por(engenheiro, supervisor).
chefiado_por(analista, supervisor).
chefiado_por(supervisor, supervisor_chefe).
chefiado_por(supervisor_chefe, diretor).
chefiado_por(secretaria_exec, diretor).

% a)
% O sisnando chefia os analistas?.
% Que cargos são chefiados por técnicos e que cargos são chefiados por esses?
% Quem é chefiado por supervisores?
% Que cargo é chefiado pelo diretor e não é o cargo da felismina?

% b)
% X = supervisor
% X = engenheiro; Y = supervisor
% J = analista; P = leonilde
% P = supervisor_chefe

% c)
chefe(X, Y) :- cargo(CX, X), cargo(CY, Y), chefiado_por(Y, X).
mesmo_chefe(X, Y) :- cargo(CX, X), cargo(CY, Y), chefiado_por(CX, C), chefiado_por(CY, C).
