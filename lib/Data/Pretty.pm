use MONKEY-TYPING;

augment class Hash {
    multi method gist is default {
        '{' ~ ($.pairs.sort.map( -> $elem {
                given ++$ {
                    when 101 { '...' }
                    when 102 { last }
                    default  { $elem.gist }
                }
            } ).join: ', ') ~ '}'
    }
}

augment class Array {
    multi method gist is default {
        '[' ~ $.map(*.gist).join(', ') ~ ']'
    }
}

augment class List {
    multi method gist is default {
        '(' ~ $.map(*.gist).join(', ') ~ ')'
    }
}

augment class Sub {
    multi method gist is default {
        '&' ~ ($.name || '<anon>')
    }
}

augment class Regex {
    multi method gist is default {
        '<regex>'
    }
}
