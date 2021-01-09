(declare-const X String)
; [-]?[1-9]\d{0,16}\.?\d{0,2}|[-]?[0]?\.[1-9]{1,2}|[-]?[0]?\.[0-9][1-9]
(assert (not (str.in.re X (re.union (re.++ (re.opt (str.to.re "-")) (re.range "1" "9") ((_ re.loop 0 16) (re.range "0" "9")) (re.opt (str.to.re ".")) ((_ re.loop 0 2) (re.range "0" "9"))) (re.++ (re.opt (str.to.re "-")) (re.opt (str.to.re "0")) (str.to.re ".") ((_ re.loop 1 2) (re.range "1" "9"))) (re.++ (re.opt (str.to.re "-")) (re.opt (str.to.re "0")) (str.to.re ".") (re.range "0" "9") (re.range "1" "9") (str.to.re "\x0a"))))))
(check-sat)
