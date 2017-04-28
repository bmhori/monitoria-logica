homem(yasuyuki).
homem(yasuchika).
homem(kenji).
homem(sidney).
homem(sidneyjr).
homem(bruno).

mulher(sonia).
mulher(kinue).
mulher(bruna).
mulher(sophia).
mulher(val).
mulher(erika).

pai(yasuyuki, bruna).
pai(yasuyuki, kenji).
pai(yasuyuki, sophia).
pai(yasuchika, yasuyuki).
pai(yasuchika, erika).
pai(sidney, sidneyjr).
pai(sidney, sonia).
pai(sidney, bruno).

mae(sonia, bruna).
mae(sonia, kenji).
mae(sonia, sophia).
mae(kinue, yasuyuki).
mae(kinue, erika).
mae(val, sidneyjr).
mae(val, sonia).
mae(val, bruno).

filho(X,Y) :- homem(X), pai(Y,X).
filho(X,Y) :- homem(X), mae(Y,X).
filha(X,Y) :- mulher(X), pai(Y,X).
filha(X,Y) :- mulher(X), mae(Y,X).
irmao(X,Y) :- homem(X), pai(Z,X), pai(Z,Y), not(X=Y).
irmao(X,Y) :- homem(X), mae(Z,X), mae(Z,X), not(X=Y).
irma(X,Y) :- mulher(X), pai(Z,X), pai(Z,Y), not(X=Y).
irma(X,Y) :- mulher(X), mae(Z,X), mae(Z,Y), not(X=Y).
avoo(X,Y) :- homem(X), pai(X,Z), pai(Z,Y).
avoo(X,Y) :- homem(X), pai(X,Z), mae(Z,Y).
avoa(X,Y) :- mulher(X), mae(X,Z), pai(Z,Y).
avoa(X,Y) :- mulher(X), mae(X,Z), mae(Z,Y).
neto(X,Y) :- homem(X), pai(Y,Z), pai(Z,X).
neto(X,Y) :- homem(X), pai(Y,Z), mae(Z,X).
neto(X,Y) :- homem(X), mae(Y,Z), pai(Z,X).
neto(X,Y) :- homem(X), mae(Y,Z), mae(Z,X).
neta(X,Y) :- mulher(X), pai(Y,Z), pai(Z,X).
neta(X,Y) :- mulher(X), pai(Y,Z), mae(Z,X).
neta(X,Y) :- mulher(X), mae(Y,Z), pai(Z,X).
neta(X,Y) :- mulher(X), mae(Y,Z), mae(Z,X).
tio(X,Y) :- homem(X), irmao(X,Z), pai(Z,Y) | irmao(X,Z), mae(Z,Y), not(X=Y).
tia(X,Y) :- mulher(X), irma(X,Z), pai(Z,Y) | irma(X,Z), mae(Z,Y), not(X=Y).
sobrinho(X,Y) :- homem(X), tio(Y,X).
sobrinho(X,Y) :- homem(X), tia(Y,X).
sobrinha(X,Y) :- mulher(X), tio(Y,X).
sobrinha(X,Y) :- mulher(X), tia(Y,X).
primo(X,Y) :- homem(X), pai(Z,Y), tio(Z,X).
primo(X,Y) :- homem(X), mae(Z,Y), tia(Z,X).
prima(X,Y) :- mulher(X), pai(Z,Y), tio(Z,X).
prima(X,Y) :- mulher(X), mae(Z,Y), tia(Z,X).
