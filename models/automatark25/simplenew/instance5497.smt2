(declare-const X String)
; ^#(\d{6})|^#([A-F]{6})|^#([A-F]|[0-9]){6}
(assert (str.in.re X (re.++ (str.to.re "#") (re.union ((_ re.loop 6 6) (re.range "0" "9")) ((_ re.loop 6 6) (re.range "A" "F")) (re.++ ((_ re.loop 6 6) (re.union (re.range "A" "F") (re.range "0" "9"))) (str.to.re "\x0a"))))))
(check-sat)
