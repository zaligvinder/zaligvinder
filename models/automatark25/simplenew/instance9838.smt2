(declare-const X String)
; [\x00-\x1F\x7F]
(assert (str.in.re X (re.++ (re.union (re.range "\x00" "\x1f") (str.to.re "\x7f")) (str.to.re "\x0a"))))
(check-sat)
