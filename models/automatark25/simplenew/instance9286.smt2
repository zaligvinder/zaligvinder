(declare-const X String)
; Host\u{3A}[^\n\r]*\u{2F}bar_pl\u{2F}shdoclc\.fcgi
(assert (str.in_re X (re.++ (str.to_re "Host:") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "/bar_pl/shdoclc.fcgi\u{a}"))))
(check-sat)
