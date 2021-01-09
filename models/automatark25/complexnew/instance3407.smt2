(declare-const X String)
; Controlsource%3Dultrasearch136%26campaign%3Dsnap
(assert (not (str.in.re X (str.to.re "Controlsource%3Dultrasearch136%26campaign%3Dsnap\x0a"))))
; ^[^a-zA-Z0-9]+$
(assert (not (str.in.re X (re.++ (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9"))) (str.to.re "\x0a")))))
; ((IT|LV)-?)?[0-9]{11}
(assert (str.in.re X (re.++ (re.opt (re.++ (re.union (str.to.re "IT") (str.to.re "LV")) (re.opt (str.to.re "-")))) ((_ re.loop 11 11) (re.range "0" "9")) (str.to.re "\x0a"))))
(check-sat)
