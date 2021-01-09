(declare-const X String)
; (^\d{1,3}$)|(\d{1,3})\.?(\d{0,0}[0,5])
(assert (not (str.in.re X (re.union ((_ re.loop 1 3) (re.range "0" "9")) (re.++ ((_ re.loop 1 3) (re.range "0" "9")) (re.opt (str.to.re ".")) (str.to.re "\x0a") ((_ re.loop 0 0) (re.range "0" "9")) (re.union (str.to.re "0") (str.to.re ",") (str.to.re "5")))))))
; Agentppcdomain\x2Eco\x2EukWordSpy\-Locked
(assert (not (str.in.re X (str.to.re "Agentppcdomain.co.ukWordSpy-Locked\x0a"))))
; ^([1-9]|0[1-9]|[12][0-9]|3[01])(-|/)(([1-9]|0[1-9])|(1[0-2]))(-|/)(([0-9][0-9])|([0-9][0-9][0-9][0-9]))$
(assert (not (str.in.re X (re.++ (re.union (re.range "1" "9") (re.++ (str.to.re "0") (re.range "1" "9")) (re.++ (re.union (str.to.re "1") (str.to.re "2")) (re.range "0" "9")) (re.++ (str.to.re "3") (re.union (str.to.re "0") (str.to.re "1")))) (re.union (str.to.re "-") (str.to.re "/")) (re.union (re.++ (str.to.re "1") (re.range "0" "2")) (re.range "1" "9") (re.++ (str.to.re "0") (re.range "1" "9"))) (re.union (str.to.re "-") (str.to.re "/")) (re.union (re.++ (re.range "0" "9") (re.range "0" "9")) (re.++ (re.range "0" "9") (re.range "0" "9") (re.range "0" "9") (re.range "0" "9"))) (str.to.re "\x0a")))))
(check-sat)
