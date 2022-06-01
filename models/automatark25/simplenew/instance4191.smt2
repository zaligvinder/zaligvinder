(declare-const X String)
; Subject\u{3A}as\u{2E}starware\u{2E}com\u{2F}dp\u{2F}search\?x=
(assert (str.in_re X (str.to_re "Subject:as.starware.com/dp/search?x=\u{a}")))
(check-sat)
