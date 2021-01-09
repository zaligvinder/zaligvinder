(declare-const X String)
; /^\x2f[0-9]{4,10}$/Ui
(assert (not (str.in.re X (re.++ (str.to.re "//") ((_ re.loop 4 10) (re.range "0" "9")) (str.to.re "/Ui\x0a")))))
; /^UPDATE\|[0-9]\.[0-9]\.[0-9]\|[A-F0-9]{48}\|{3}$/
(assert (not (str.in.re X (re.++ (str.to.re "/UPDATE|") (re.range "0" "9") (str.to.re ".") (re.range "0" "9") (str.to.re ".") (re.range "0" "9") (str.to.re "|") ((_ re.loop 48 48) (re.union (re.range "A" "F") (re.range "0" "9"))) ((_ re.loop 3 3) (str.to.re "|")) (str.to.re "/\x0a")))))
(check-sat)
