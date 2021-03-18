% Copyright

implement main
    open core, console

class facts
    fact : (integer, string).

class predicates
    rule : (integer [out], string, string [out], integer* [out]) nondeterm.
    complete : (integer) determ.
    recognition : (string).
    discover : (integer*) nondeterm.
    ask : (integer) determ.

clauses
    rule(1, "класс", "Стратегии", [1, 2]).
    rule(2, "класс", "Симуляторы", [4, 5]).
    rule(3, "класс", "RPG", [3, 6, 7]).
    rule(4, "класс", "Шутеры", [5, 8]).
    rule(5, "класс", "Головоломки", [7]).
    rule(6, "Стратегии", "StarCraf", [10]).
    rule(7, "Стратегии", "Heroes might and magic", [9, 11]).
    rule(8, "Стратегии", "Civilization", [9]).
    rule(9, "Стратегиие", "Warcraft", [11]).
    rule(10, "Стратегии", "Rice of nation", [12]).
    rule(11, "Симуляторы", "Sims", [20]).
    rule(12, "Симуляторы", "War Thunder", [13, 15]).
    rule(13, "Симуляторы", "Need for speed", [13, 14]).
    rule(14, "Симуляторы", "FIFA", [16, 17]).
    rule(15, "Симуляторы", "NHL", [16, 18]).
    rule(16, "Симуляторы", "UFC", [16, 19]).
    rule(17, "Головоломки", "Portal", [21]).
    rule(18, "Головоломки", "Limbo", [22, 25]).
    rule(19, "Головоломки", "Machinarium", [23]).
    rule(20, "Головоломки", "The talos principle", [21, 22]).
    rule(21, "Головоломки", "Untravel", [24, 25]).
    rule(22, "Шутеры", "Far Cry", [26]).
    rule(23, "Шутеры", "Battlefild", [29, 30]).
    rule(24, "Шутеры", "Metro 2033", [28, 31]).
    rule(25, "Шутеры", "Bioshock", [27, 31]).
    rule(26, "Шутеры", "Crysis", [27, 28, 29]).
    rule(27, "RPG", "TES Skyrim", [33, 26]).
    rule(28, "RPG", "Fallout", [32, 33, 36, 37]).
    rule(29, "RPG", "STALKER", [32, 33, 36]).
    rule(30, "RPG", "Darksiders", [32, 36]).
    rule(31, "RPG", "Darkest Dungeon", [35, 36]).
    rule(32, "RPG", "GTA", [33]).
    rule(33, "RPG", "Mass Effect", [34, 35]).
    ask(X) :-
        fact(X, "y"),
        !.
    ask(X) :-
        fact(X, "n"),
        !,
        fail.
    ask(1) :-
        write("Вам нравится командовать?"),
        !,
        complete(1).
    ask(2) :-
        write("Вы любите продумывать каждый свой шаг?"),
        !,
        complete(2).
    ask(3) :-
        write("Вам нравится гулять и созерцать природу?"),
        !,
        complete(3).
    ask(4) :-
        write("Вы интересуетесь спортом?"),
        !,
        complete(4).
    ask(5) :-
        write("Вам нравится разбираться в устройстве техники?"),
        !,
        complete(5).
    ask(6) :-
        write("Вы любите фентези?"),
        !,
        complete(6).
    ask(7) :-
        write("Вы любите решать головоломки?"),
        !,
        complete(7).
    ask(8) :-
        write("Вам нравится стрелять в тире?"),
        !,
        complete(8).
    ask(9) :-
        write("Вам нравится пошаговое управление?"),
        !,
        complete(9).
    ask(10) :-
        write("Вам нравится космос и все что с ним связано?"),
        !,
        complete(10).
    ask(11) :-
        write("Вы любите фэнтези?"),
        !,
        complete(11).
    ask(12) :-
        write("Вам нравится история?"),
        !,
        complete(12).
    ask(13) :-
        write("Вы любите управлять техникой?"),
        !,
        complete(13).
    ask(14) :-
        write("Вам нравится скорость?"),
        !,
        complete(14).
    ask(15) :-
        write("Вы интересуетесь историей?"),
        !,
        complete(15).
    ask(16) :-
        write("Вы любите спорт?"),
        !,
        complete(16).
    ask(17) :-
        write("Вы любите футбол?"),
        !,
        complete(17).
    ask(18) :-
        write("Вы любите хоккей?"),
        !,
        complete(18).
    ask(19) :-
        write("Вы любите единоборства?"),
        !,
        complete(19).
    ask(20) :-
        write("Нравится ли вам строить планы на жизнь?"),
        !,
        complete(20).
    ask(21) :-
        write("Вам нравятся новые технологии?"),
        !,
        complete(21).
    ask(22) :-
        write("Вы любите сами догадываться до сюжета игры?"),
        !,
        complete(22).
    ask(23) :-
        write("Вам нравятся паровые машины?"),
        !,
        complete(23).
    ask(24) :-
        write("Вы любите красочную картинку?"),
        !,
        complete(24).
    ask(25) :-
        write("Вам нравится путешествовать?"),
        !,
        complete(25).
    ask(26) :-
        write("Вы любите путешествовать по открытому миру?"),
        !,
        complete(26).
    ask(27) :-
        write("Вам нравится когда у вашего персонажа есть суперсилы?"),
        !,
        complete(27).
    ask(28) :-
        write("Вы цените хорошую графику?"),
        !,
        complete(28).
    ask(29) :-
        write("Вам нравится современное вооружение?"),
        !,
        complete(29).
    ask(30) :-
        write("Хотели бы вы сыграть вместе с другими игроками?"),
        !,
        complete(30).
    ask(31) :-
        write("Вам нравится стилистика постапокалипсиса?"),
        !,
        complete(31).
    ask(32) :-
        write("Вы любите продумавать каждый свой шаг?"),
        !,
        complete(32).
    ask(33) :-
        write("Вы любите собирать редкие вещи?"),
        !,
        complete(33).
    ask(34) :-
        write("Вам нравится стилистика 80х ?"),
        !,
        complete(34).
    recognition(X) :-
        rule(N, X, Y, Z),
        discover(Z),
        !,
        write(" Вам подходит: ", X, " - ", Y, " (правило ", N, ")"),
        nl,
        recognition(Y).
    recognition("Стратегии") :-
        write("По заданным параметрам не найдено ни одной игры. Попробуйте еще раз."),
        nl,
        !.
    recognition("Симуляторы") :-
        write("По заданным параметрам не найдено ни одной игры. Попробуйте еще раз."),
        nl,
        !.
    recognition("Головоломки") :-
        write("По заданным параметрам не найдено ни одной игры. Попробуйте еще раз."),
        nl,
        !.
    recognition("Шутеры") :-
        write("По заданным параметрам не найдено ни одной игры. Попробуйте еще раз."),
        nl,
        !.
    recognition("RPG") :-
        write("По заданным параметрам не найдено ни одной игры. Попробуйте еще раз."),
        nl,
        !.
    recognition(_).
    discover([X | Y]) :-
        ask(X),
        discover(Y).
    discover([]).
    complete(X) :-
        write(" y/n"),
        nl,
        Y = readline(),
        ((Y = "y" or Y = "Y") and assert(fact(X, "y")) and ! or assert(fact(X, "n")) and ! and fail).
    run() :-
        init(),
        recognition("класс"),
        _ = readchar().

end implement main

goal
    console::runUtf8(main::run).
