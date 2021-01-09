(declare-const X String)
; [^"\r\n]*
(assert (str.in.re X (re.++ (re.* (re.union (str.to.re "\x22") (str.to.re "\x0d") (str.to.re "\x0a"))) (str.to.re "\x0a"))))
(check-sat)
