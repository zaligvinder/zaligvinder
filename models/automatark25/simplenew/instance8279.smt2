(declare-const X String)
; ^\d{9}[\d|X]$
(assert (str.in.re X (re.++ ((_ re.loop 9 9) (re.range "0" "9")) (re.union (re.range "0" "9") (str.to.re "|") (str.to.re "X")) (str.to.re "\x0a"))))
(check-sat)
