(declare-const X String)
; /filename=[^\n]*\x2esum/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".sum/i\x0a"))))
; ^((\+989)|(989)|(00989)|(09|9))([1|2|3][0-9]\d{7}$)
(assert (not (str.in.re X (re.++ (re.union (str.to.re "+989") (str.to.re "989") (str.to.re "00989") (str.to.re "09") (str.to.re "9")) (str.to.re "\x0a") (re.union (str.to.re "1") (str.to.re "|") (str.to.re "2") (str.to.re "3")) (re.range "0" "9") ((_ re.loop 7 7) (re.range "0" "9"))))))
(check-sat)
