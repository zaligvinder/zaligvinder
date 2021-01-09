(declare-const X String)
; (\d{3}\-\d{2}\-\d{4})
(assert (str.in.re X (re.++ (str.to.re "\x0a") ((_ re.loop 3 3) (re.range "0" "9")) (str.to.re "-") ((_ re.loop 2 2) (re.range "0" "9")) (str.to.re "-") ((_ re.loop 4 4) (re.range "0" "9")))))
; ^(000-)(\\d{5}-){2}\\d{3}$
(assert (not (str.in.re X (re.++ (str.to.re "000-") ((_ re.loop 2 2) (re.++ (str.to.re "\x5c") ((_ re.loop 5 5) (str.to.re "d")) (str.to.re "-"))) (str.to.re "\x5c") ((_ re.loop 3 3) (str.to.re "d")) (str.to.re "\x0a")))))
(check-sat)
