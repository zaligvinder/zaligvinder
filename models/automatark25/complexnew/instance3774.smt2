(declare-const X String)
; (^(\d{2}.\d{3}.\d{3}/\d{4}-\d{2})|(\d{14})$)
(assert (not (str.in.re X (re.++ (re.union (re.++ ((_ re.loop 2 2) (re.range "0" "9")) re.allchar ((_ re.loop 3 3) (re.range "0" "9")) re.allchar ((_ re.loop 3 3) (re.range "0" "9")) (str.to.re "/") ((_ re.loop 4 4) (re.range "0" "9")) (str.to.re "-") ((_ re.loop 2 2) (re.range "0" "9"))) ((_ re.loop 14 14) (re.range "0" "9"))) (str.to.re "\x0a")))))
; /filename=[^\n]*\x2ejpe/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".jpe/i\x0a")))))
; Host\x3A\s+\x2FNFO\x2CRegisteredDeletingadfsgecoiwnf
(assert (str.in.re X (re.++ (str.to.re "Host:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "/NFO,RegisteredDeletingadfsgecoiwnf\x1b\x0a"))))
(check-sat)
