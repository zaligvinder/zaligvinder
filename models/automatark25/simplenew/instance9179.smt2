(declare-const X String)
; max-\s+\u{2F}bar_pl\u{2F}fav\.fcgi
(assert (str.in_re X (re.++ (str.to_re "max-") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "/bar_pl/fav.fcgi\u{a}"))))
(check-sat)
