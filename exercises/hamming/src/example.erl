-module(example).

-export([distance/2, test_version/0]).

distance(Strand1, Strand2) ->
    walk(Strand1, Strand2, 0).

test_version() ->
    2.


walk([], [], Dist) -> Dist;
walk([A|As], [A|Bs], Dist) -> walk(As, Bs, Dist);
walk([_|As], [_|Bs], Dist) -> walk(As, Bs, Dist + 1);
walk(_, _, _) -> {error, "left and right strands must be of equal length"}.
