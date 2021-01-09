(declare-const X String)
; /\.makeMeasurement\s*\x28[^\x3b]+?Array/i
(assert (not (str.in.re X (re.++ (str.to.re "/.makeMeasurement") (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "(") (re.+ (re.comp (str.to.re ";"))) (str.to.re "Array/i\x0a")))))
; ^([a-zA-Z0-9]{1,15})$
(assert (not (str.in.re X (re.++ ((_ re.loop 1 15) (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9"))) (str.to.re "\x0a")))))
; ^\d{3}\s?\d{3}\s?\d{3}$
(assert (not (str.in.re X (re.++ ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) ((_ re.loop 3 3) (re.range "0" "9")) (str.to.re "\x0a")))))
; \x2Fsearchfast\x2Fhoroscope2libManager\x2Edll\x5EgetFreeAccessBarHost\x3Ahostiedesksearch\.dropspam\.com
(assert (str.in.re X (str.to.re "/searchfast/horoscope2libManager.dll^getFreeAccessBarHost:hostiedesksearch.dropspam.com\x0a")))
; (NL-?)?[0-9]{9}B[0-9]{2}
(assert (not (str.in.re X (re.++ (re.opt (re.++ (str.to.re "NL") (re.opt (str.to.re "-")))) ((_ re.loop 9 9) (re.range "0" "9")) (str.to.re "B") ((_ re.loop 2 2) (re.range "0" "9")) (str.to.re "\x0a")))))
(check-sat)
