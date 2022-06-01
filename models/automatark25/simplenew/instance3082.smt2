(declare-const X String)
; From\u{3A}\<title\>ActualUser-Agent\u{3A}\u{2F}bar_pl\u{2F}fav\.fcgi
(assert (not (str.in_re X (str.to_re "From:<title>ActualUser-Agent:/bar_pl/fav.fcgi\u{a}"))))
(check-sat)
