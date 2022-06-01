(declare-const X String)
; /[^\n -~\r]{4}/P
(assert (not (str.in_re X (re.++ (str.to_re "/") ((_ re.loop 4 4) (re.union (str.to_re "\u{a}") (re.range " " "~") (str.to_re "\u{d}"))) (str.to_re "/P\u{a}")))))
(check-sat)
