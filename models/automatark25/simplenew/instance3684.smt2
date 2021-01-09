(declare-const X String)
; [A-Za-z]{2}[0-9]{1,6}|[0-9]{1,8}
(assert (str.in.re X (re.union (re.++ ((_ re.loop 2 2) (re.union (re.range "A" "Z") (re.range "a" "z"))) ((_ re.loop 1 6) (re.range "0" "9"))) (re.++ ((_ re.loop 1 8) (re.range "0" "9")) (str.to.re "\x0a")))))
(check-sat)
