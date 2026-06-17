alimenta(alga, sol).
alimenta(alga, terra).

alimenta(planta, sol).
alimenta(planta, terra).

competidores_diretos(A, B) :-
    alimenta(A, sol),
    alimenta(A, terra),
    alimenta(B, sol),
    alimenta(B, terra),
    A \= B.