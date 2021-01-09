(declare-const X String)
; ^(LV-)[0-9]{4}$
(assert (not (str.in.re X (re.++ (str.to.re "LV-") ((_ re.loop 4 4) (re.range "0" "9")) (str.to.re "\x0a")))))
; ^5[1-5][0-9]{14}$
(assert (str.in.re X (re.++ (str.to.re "5") (re.range "1" "5") ((_ re.loop 14 14) (re.range "0" "9")) (str.to.re "\x0a"))))
; /filename=[^\n]*\x2ewk4/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".wk4/i\x0a"))))
(check-sat)
