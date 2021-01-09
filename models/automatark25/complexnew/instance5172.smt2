(declare-const X String)
; [( ]?\d{1,3}[ )]?[ -]?\d{3}[ -]?\d{4}
(assert (str.in.re X (re.++ (re.opt (re.union (str.to.re "(") (str.to.re " "))) ((_ re.loop 1 3) (re.range "0" "9")) (re.opt (re.union (str.to.re " ") (str.to.re ")"))) (re.opt (re.union (str.to.re " ") (str.to.re "-"))) ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (re.union (str.to.re " ") (str.to.re "-"))) ((_ re.loop 4 4) (re.range "0" "9")) (str.to.re "\x0a"))))
; /filename=[^\n]*\x2evwr/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".vwr/i\x0a"))))
(check-sat)
