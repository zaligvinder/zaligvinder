(declare-const X String)
; ("((\\.)|[^\\"])*")
(assert (str.in.re X (re.++ (str.to.re "\x0a\x22") (re.* (re.union (re.++ (str.to.re "\x5c") re.allchar) (str.to.re "\x5c") (str.to.re "\x22"))) (str.to.re "\x22"))))
(check-sat)
