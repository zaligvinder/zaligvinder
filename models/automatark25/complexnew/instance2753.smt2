(declare-const X String)
; ^-?([1]?[1-7][1-9]|[1]?[1-8][0]|[1-9]?[0-9])\.{1}\d{1,6}
(assert (str.in.re X (re.++ (re.opt (str.to.re "-")) (re.union (re.++ (re.opt (str.to.re "1")) (re.range "1" "7") (re.range "1" "9")) (re.++ (re.opt (str.to.re "1")) (re.range "1" "8") (str.to.re "0")) (re.++ (re.opt (re.range "1" "9")) (re.range "0" "9"))) ((_ re.loop 1 1) (str.to.re ".")) ((_ re.loop 1 6) (re.range "0" "9")) (str.to.re "\x0a"))))
; /[^\x20-\x7e\x0d\x0a]{4}/P
(assert (str.in.re X (re.++ (str.to.re "/") ((_ re.loop 4 4) (re.union (re.range " " "~") (str.to.re "\x0d") (str.to.re "\x0a"))) (str.to.re "/P\x0a"))))
(check-sat)
