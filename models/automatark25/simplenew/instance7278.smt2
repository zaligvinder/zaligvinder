(declare-const X String)
; Fictional\sHost\u{3A}Wordmyway\.com
(assert (str.in_re X (re.++ (str.to_re "Fictional") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "Host:Wordmyway.com\u{a}"))))
(check-sat)
