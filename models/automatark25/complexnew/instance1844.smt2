(declare-const X String)
; Controlsource%3Dultrasearch136%26campaign%3Dsnap
(assert (str.in.re X (str.to.re "Controlsource%3Dultrasearch136%26campaign%3Dsnap\x0a")))
; ^[A-z]?\d{8}[A-z]$
(assert (str.in.re X (re.++ (re.opt (re.range "A" "z")) ((_ re.loop 8 8) (re.range "0" "9")) (re.range "A" "z") (str.to.re "\x0a"))))
(check-sat)
