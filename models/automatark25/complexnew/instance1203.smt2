(declare-const X String)
; ^(\d{5}-\d{4}|\d{5})$
(assert (str.in.re X (re.++ (re.union (re.++ ((_ re.loop 5 5) (re.range "0" "9")) (str.to.re "-") ((_ re.loop 4 4) (re.range "0" "9"))) ((_ re.loop 5 5) (re.range "0" "9"))) (str.to.re "\x0a"))))
; Current[^\n\r]*server[^\n\r]*Host\x3Aocllceclbhs\x2fgth
(assert (not (str.in.re X (re.++ (str.to.re "Current") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "server") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "Host:ocllceclbhs/gth\x0a")))))
(check-sat)
