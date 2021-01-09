(declare-const X String)
; (^(2014)|^(2149))\d{11}$
(assert (not (str.in.re X (re.++ (re.union (str.to.re "2014") (str.to.re "2149")) ((_ re.loop 11 11) (re.range "0" "9")) (str.to.re "\x0a")))))
(check-sat)
