(declare-const X String)
; /new (java|org)/Ui
(assert (str.in_re X (re.++ (str.to_re "/new ") (re.union (str.to_re "java") (str.to_re "org")) (str.to_re "/Ui\u{a}"))))
(check-sat)
