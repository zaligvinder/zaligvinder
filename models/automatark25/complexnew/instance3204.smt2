(declare-const X String)
; ^([0-9]*\-?\ ?\/?[0-9]*)$
(assert (not (str.in.re X (re.++ (str.to.re "\x0a") (re.* (re.range "0" "9")) (re.opt (str.to.re "-")) (re.opt (str.to.re " ")) (re.opt (str.to.re "/")) (re.* (re.range "0" "9"))))))
; ^(102[0-3]|10[0-1]\d|[1-9][0-9]{0,2}|0)$
(assert (str.in.re X (re.++ (re.union (re.++ (str.to.re "102") (re.range "0" "3")) (re.++ (str.to.re "10") (re.range "0" "1") (re.range "0" "9")) (re.++ (re.range "1" "9") ((_ re.loop 0 2) (re.range "0" "9"))) (str.to.re "0")) (str.to.re "\x0a"))))
(check-sat)
