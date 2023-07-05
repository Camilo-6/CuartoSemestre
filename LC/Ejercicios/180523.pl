cadena_a_lista(X, Y):- X = "", Y = [].
cadena_a_lista(X, Y):- X \= "", sub_string(X, 0, 1, _, A), sub_string(X, 1, _, 0, B), cadena_a_lista(B, C), Y = [A|C].

cadena_a_numero(X, Y):- X = "", Y = [].
cadena_a_numero(X, Y):- cadena_a_lista(X, Z), lista_a_numero(Z, Y).

lista_a_numero([], []).
lista_a_numero([X|Y], Z):- lista_a_numero(Y, A), number_string(B, X), Z = [B|A].