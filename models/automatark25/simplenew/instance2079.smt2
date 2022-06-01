(declare-const X String)
; /\/[a-z0-9]{9}\.jnlp$/U
(assert (not (str.in_re X (re.++ (str.to_re "//") ((_ re.loop 9 9) (re.union (re.range "a" "z") (re.range "0" "9"))) (str.to_re ".jnlp/U\u{a}")))))
(check-sat)
