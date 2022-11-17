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

% chefiado_por(analista, X), cargo(X, sisnando).
% O sisnando chefia os analistas?

% chefiado_por(tecnico, X), chefiado_por(X, Y).
% Que cargos são chefiados por técnicos e que cargos são chefiados por esses?

% cargo(J, P), chefiado_por(J, supervisor).
% Quem é chefiado por supervisores?

% chefiado_por(P, diretor), \+(cargo(P, felismina)).
% Que cargo é chefiado pelo diretor e não é o cargo da felismina?
