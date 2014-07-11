use MONKEY_TYPING;

augment class Array {
    method gist {
        '[' ~ $.map(*.gist).join(', ') ~ ']'
    }
}

augment class Parcel {
    multi method gist is default {
        '(' ~ $.map(*.gist).join(', ') ~ ')'
    }
}

augment class Sub {
    method gist {
        '&' ~ ($.name || '<anon>')
    }
}

augment class Regex {
    method gist {
        '<regex>'
    }
}
