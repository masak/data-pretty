## Data::Pretty

When you stringify Perl 6 data structures, you expect sensible results just
like in any modern programming language. Unfortunately, Perl 6 doesn't deliver
on that point; it hasn't shaken off all the weird legacy stringification from
Perl 5.

    $ perl6
    > [1, 2, 3]
    1 2 3
    > (1, 2, 3)
    1 2 3
    > [1, 2, [3, 4]]
    1 2 3 4
    > sub foo {}
    sub foo () { #`(Sub|140681338496168) ... }

`Data::Pretty` gives you nice default stringifications for arrays, parcels,
hashes, and subroutines.

    > use Data::Pretty
    > [1, 2, 3]
    [1, 2, 3]
    > (1, 2, 3)
    (1, 2, 3)
    > [1, 2, [3, 4]]
    [1, 2, [3, 4]]
    > sub foo {}
    &foo
