(declare-const X String)
; /^.{9}[^\x03\x0a\x11\x10]/R
(assert (str.in.re X (re.++ (str.to.re "/") ((_ re.loop 9 9) re.allchar) (re.union (str.to.re "\x03") (str.to.re "\x0a") (str.to.re "\x11") (str.to.re "\x10")) (str.to.re "/R\x0a"))))
(check-sat)
