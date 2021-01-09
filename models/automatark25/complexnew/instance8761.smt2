(declare-const X String)
; /^\/\?[a-f0-9]{32}$/U
(assert (str.in.re X (re.++ (str.to.re "//?") ((_ re.loop 32 32) (re.union (re.range "a" "f") (re.range "0" "9"))) (str.to.re "/U\x0a"))))
; (vi(v))?d
(assert (str.in.re X (re.++ (re.opt (str.to.re "viv")) (str.to.re "d\x0a"))))
; 12/err
(assert (not (str.in.re X (str.to.re "12/err\x0a"))))
(check-sat)
