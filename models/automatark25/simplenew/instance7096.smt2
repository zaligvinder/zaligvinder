(declare-const X String)
; ^[A][Z](.?)[0-9]{4}$
(assert (not (str.in_re X (re.++ (str.to_re "AZ") (re.opt re.allchar) ((_ re.loop 4 4) (re.range "0" "9")) (str.to_re "\u{a}")))))
(check-sat)
