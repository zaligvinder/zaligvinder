(declare-const X String)
; /filename=[^\n]*\x2etif/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".tif/i\x0a"))))
; ^([7-9]{1})([0-9]{9})$
(assert (not (str.in.re X (re.++ ((_ re.loop 1 1) (re.range "7" "9")) ((_ re.loop 9 9) (re.range "0" "9")) (str.to.re "\x0a")))))
(check-sat)
