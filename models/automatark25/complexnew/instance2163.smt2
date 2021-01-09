(declare-const X String)
; LOGNetBusCookie\x3aToolbar
(assert (str.in.re X (str.to.re "LOGNetBusCookie:Toolbar\x0a")))
; ppcdomain\x2Eco\x2EukBasic
(assert (str.in.re X (str.to.re "ppcdomain.co.ukBasic\x0a")))
; ^[0-9]{2}[-][0-9]{2}[-][0-9]{2}$
(assert (not (str.in.re X (re.++ ((_ re.loop 2 2) (re.range "0" "9")) (str.to.re "-") ((_ re.loop 2 2) (re.range "0" "9")) (str.to.re "-") ((_ re.loop 2 2) (re.range "0" "9")) (str.to.re "\x0a")))))
; ((IT|LV)-?)?[0-9]{11}
(assert (not (str.in.re X (re.++ (re.opt (re.++ (re.union (str.to.re "IT") (str.to.re "LV")) (re.opt (str.to.re "-")))) ((_ re.loop 11 11) (re.range "0" "9")) (str.to.re "\x0a")))))
; /filename=[^\n]*\x2epfb/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".pfb/i\x0a")))))
(check-sat)
