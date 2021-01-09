(declare-const X String)
; ^(([0-9]{5})*-([0-9]{4}))|([0-9]{5})$
(assert (str.in.re X (re.union (re.++ (re.* ((_ re.loop 5 5) (re.range "0" "9"))) (str.to.re "-") ((_ re.loop 4 4) (re.range "0" "9"))) (re.++ ((_ re.loop 5 5) (re.range "0" "9")) (str.to.re "\x0a")))))
; Host\x3A\dKeyloggercargo=
(assert (str.in.re X (re.++ (str.to.re "Host:") (re.range "0" "9") (str.to.re "Keyloggercargo=\x0a"))))
(check-sat)
