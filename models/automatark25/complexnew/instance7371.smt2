(declare-const X String)
; \-?(90|[0-8]?[0-9]\.[0-9]{0,6})\,\-?(180|(1[0-7][0-9]|[0-9]{0,2})\.[0-9]{0,6})
(assert (not (str.in.re X (re.++ (re.opt (str.to.re "-")) (re.union (str.to.re "90") (re.++ (re.opt (re.range "0" "8")) (re.range "0" "9") (str.to.re ".") ((_ re.loop 0 6) (re.range "0" "9")))) (str.to.re ",") (re.opt (str.to.re "-")) (re.union (str.to.re "180") (re.++ (re.union (re.++ (str.to.re "1") (re.range "0" "7") (re.range "0" "9")) ((_ re.loop 0 2) (re.range "0" "9"))) (str.to.re ".") ((_ re.loop 0 6) (re.range "0" "9")))) (str.to.re "\x0a")))))
; [\s]+
(assert (str.in.re X (re.++ (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "\x0a"))))
(check-sat)
