(declare-const X String)
; ^(0[1-9]|[12][0-9]|3[01])-(0[1-9]|11|12|10)-(19[0-9]{2})$
(assert (not (str.in.re X (re.++ (re.union (re.++ (str.to.re "0") (re.range "1" "9")) (re.++ (re.union (str.to.re "1") (str.to.re "2")) (re.range "0" "9")) (re.++ (str.to.re "3") (re.union (str.to.re "0") (str.to.re "1")))) (str.to.re "-") (re.union (re.++ (str.to.re "0") (re.range "1" "9")) (str.to.re "11") (str.to.re "12") (str.to.re "10")) (str.to.re "-\x0a19") ((_ re.loop 2 2) (re.range "0" "9"))))))
; /filename=[^\n]*\x2easx/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".asx/i\x0a"))))
(check-sat)
