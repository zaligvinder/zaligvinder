(declare-const X String)
; /filename=[^\n]*\x2empg/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".mpg/i\x0a"))))
; ^(GIR|[A-Z]\d[A-Z\d]?|[A-Z]{2}\d[A-Z\d]?)[ ]??(\d[A-Z]{0,2})??$
(assert (str.in.re X (re.++ (re.union (str.to.re "GIR") (re.++ (re.range "A" "Z") (re.range "0" "9") (re.opt (re.union (re.range "A" "Z") (re.range "0" "9")))) (re.++ ((_ re.loop 2 2) (re.range "A" "Z")) (re.range "0" "9") (re.opt (re.union (re.range "A" "Z") (re.range "0" "9"))))) (re.opt (str.to.re " ")) (re.opt (re.++ (re.range "0" "9") ((_ re.loop 0 2) (re.range "A" "Z")))) (str.to.re "\x0a"))))
(check-sat)
