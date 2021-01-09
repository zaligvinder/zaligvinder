(declare-const X String)
; ^([0-9]|[1-9]\d|[1-7]\d{2}|800)$
(assert (str.in.re X (re.++ (re.union (re.range "0" "9") (re.++ (re.range "1" "9") (re.range "0" "9")) (re.++ (re.range "1" "7") ((_ re.loop 2 2) (re.range "0" "9"))) (str.to.re "800")) (str.to.re "\x0a"))))
(check-sat)
