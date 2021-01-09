(declare-const X String)
; /filename=[^\n]*\x2ewri/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".wri/i\x0a")))))
; ^([30|36|38]{2})([0-9]{12})$
(assert (not (str.in.re X (re.++ ((_ re.loop 2 2) (re.union (str.to.re "3") (str.to.re "0") (str.to.re "|") (str.to.re "6") (str.to.re "8"))) ((_ re.loop 12 12) (re.range "0" "9")) (str.to.re "\x0a")))))
(check-sat)
