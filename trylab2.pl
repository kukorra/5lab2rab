sum_even([], 0).
sum_even([H|T], Sum) :-
    (H mod 2 =:= 0 -> sum_even(T, SumRest), Sum is H + SumRest ; sum_even(T, Sum)).

start :-
    write('Введите список (в формате [1,2,3,4]): '),
    read(List),
    sum_even(List, SumEven),
    write('Сумма чётных элементов: '), write(SumEven), nl.
