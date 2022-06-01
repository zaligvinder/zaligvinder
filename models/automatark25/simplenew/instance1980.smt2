(declare-const X String)
; (^(2014)|^(2149))\d{11}$
(assert (not (str.in_re X (re.++ (re.union (str.to_re "2014") (str.to_re "2149")) ((_ re.loop 11 11) (re.range "0" "9")) (str.to_re "\u{a}")))))
(check-sat)
