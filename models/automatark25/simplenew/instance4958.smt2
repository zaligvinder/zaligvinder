(declare-const X String)
; ^[0-9][0-9,]*[0-9]$
(assert (not (str.in.re X (re.++ (re.range "0" "9") (re.* (re.union (re.range "0" "9") (str.to.re ","))) (re.range "0" "9") (str.to.re "\x0a")))))
(check-sat)
