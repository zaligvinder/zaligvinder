(declare-const X String)
; /[^\u{20}-\u{7e}\r\n]{3}/P
(assert (not (str.in_re X (re.++ (str.to_re "/") ((_ re.loop 3 3) (re.union (re.range " " "~") (str.to_re "\u{d}") (str.to_re "\u{a}"))) (str.to_re "/P\u{a}")))))
(check-sat)
