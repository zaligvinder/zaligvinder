(declare-const X String)
; \x2Fsearchfast\x2FNavhelper
(assert (str.in.re X (str.to.re "/searchfast/Navhelper\x0a")))
; /filename=p50[a-z0-9]{9}[0-9]{12}\.pdf/H
(assert (str.in.re X (re.++ (str.to.re "/filename=p50") ((_ re.loop 9 9) (re.union (re.range "a" "z") (re.range "0" "9"))) ((_ re.loop 12 12) (re.range "0" "9")) (str.to.re ".pdf/H\x0a"))))
; (")([0-9]*)(",")([0-9]*)("\))
(assert (str.in.re X (re.++ (str.to.re "\x22") (re.* (re.range "0" "9")) (str.to.re "\x22,\x22") (re.* (re.range "0" "9")) (str.to.re "\x22)\x0a"))))
(check-sat)
