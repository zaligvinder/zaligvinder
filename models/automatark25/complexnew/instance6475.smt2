(declare-const X String)
; /\x2f\?ts\x3d[a-f0-9]{40}\x26/Ui
(assert (not (str.in.re X (re.++ (str.to.re "//?ts=") ((_ re.loop 40 40) (re.union (re.range "a" "f") (re.range "0" "9"))) (str.to.re "&/Ui\x0a")))))
; ^(00|0?[1-9]|1[0-9]|2[0-3])\:([0-5][0-9])\:([0-5][0-9])$
(assert (str.in.re X (re.++ (re.union (str.to.re "00") (re.++ (re.opt (str.to.re "0")) (re.range "1" "9")) (re.++ (str.to.re "1") (re.range "0" "9")) (re.++ (str.to.re "2") (re.range "0" "3"))) (str.to.re "::\x0a") (re.range "0" "5") (re.range "0" "9") (re.range "0" "5") (re.range "0" "9"))))
(check-sat)
