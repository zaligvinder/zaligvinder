(declare-const X String)
; ^0[23489]{1}(\-)?[^0\D]{1}\d{6}$
(assert (not (str.in.re X (re.++ (str.to.re "0") ((_ re.loop 1 1) (re.union (str.to.re "2") (str.to.re "3") (str.to.re "4") (str.to.re "8") (str.to.re "9"))) (re.opt (str.to.re "-")) ((_ re.loop 1 1) (re.union (str.to.re "0") (re.comp (re.range "0" "9")))) ((_ re.loop 6 6) (re.range "0" "9")) (str.to.re "\x0a")))))
; (^\d{1,5}$|^\d{1,5}\.\d{1,2}$)
(assert (str.in.re X (re.++ (re.union ((_ re.loop 1 5) (re.range "0" "9")) (re.++ ((_ re.loop 1 5) (re.range "0" "9")) (str.to.re ".") ((_ re.loop 1 2) (re.range "0" "9")))) (str.to.re "\x0a"))))
; /\/flupdate\/\d\.html/iU
(assert (not (str.in.re X (re.++ (str.to.re "//flupdate/") (re.range "0" "9") (str.to.re ".html/iU\x0a")))))
; /filename=[^\n]*\x2edbp/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".dbp/i\x0a")))))
(check-sat)
