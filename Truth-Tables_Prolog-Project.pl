% Team D2Real

% Create operators.
:- operation(1000,inf,'and').
:- operation(1000,inf,'or').
:- operation(900,una,'not').

<<<<<<< HEAD
% Extract the variables from the boolean expression.
find_vars(N,V,V) :- member(N,[0,1]),!.    /* Boolean constants in expression */
find_vars(X,Vin,Vout) :- atom(X),
                         (member(X,Vin) -> Vout = Vin ;   /* already have  */
                            Vout = [X|Vin]).              /* include       */
find_vars(X and Y,Vin,Vout) :- find_vars(X,Vin,Vtemp),
                               find_vars(Y,Vtemp,Vout).
find_vars(X or Y,Vin,Vout) :-  find_vars(X,Vin,Vtemp),
                               find_vars(Y,Vtemp,Vout).
find_vars(not X,Vin,Vout) :-   find_vars(X,Vin,Vout).
=======
%Find the initial assignments
initial_assignment1([],[]).
initial_assignmet1([_X|R],[0|S]) :- initial_assignment1(R,S).


% Changes the truth assignments by doing a binary addition with 1
next([0|R],[1|R]).
next([1|R],[0|S]) :- next(R,S).


% Reverse a list
reverse([],[]).
reverse([P],[P]).
reverse(M,N) :- reverse(M,[],N).
reverse([],R,R).
reverse([P|T],S,L) :- reverse(T,[P|S],L).

>>>>>>> f04ca99c6f88ab88ba2fac92393da3a8c088e099

% Create Boolian Values for and, or, & not
bool_not(0,1).
bool_not(1,0).
bool_and(0,0,0).
bool_and(1,0,0).
bool_and(1,1,1).
bool_and(0,1,0).
bool_or(0,0,0).
bool_or(1,0,1).
bool_or(1,0,1).
bool_or(1,1,1).
