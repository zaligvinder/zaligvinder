(declare-const X String)
; ^A-?|[BCD][+-]?|[SN]?F|W$
(assert (str.in.re X (re.union (re.++ (str.to.re "A") (re.opt (str.to.re "-"))) (re.++ (re.union (str.to.re "B") (str.to.re "C") (str.to.re "D")) (re.opt (re.union (str.to.re "+") (str.to.re "-")))) (re.++ (re.opt (re.union (str.to.re "S") (str.to.re "N"))) (str.to.re "F")) (str.to.re "W\x0a"))))
; /filename=[^\n]*\x2evsd/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".vsd/i\x0a")))))
(check-sat)
