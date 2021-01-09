(declare-const X String)
; (^\-?[0-9]*\.?[0-9]+$)
(assert (not (str.in.re X (re.++ (str.to.re "\x0a") (re.opt (str.to.re "-")) (re.* (re.range "0" "9")) (re.opt (str.to.re ".")) (re.+ (re.range "0" "9"))))))
; /filename=[^\n]*\x2emov/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".mov/i\x0a"))))
; ^([0-9a-fA-F])*$
(assert (str.in.re X (re.++ (re.* (re.union (re.range "0" "9") (re.range "a" "f") (re.range "A" "F"))) (str.to.re "\x0a"))))
; Host\x3A[^\n\r]*\x2Fbar_pl\x2Fshdoclc\.fcgi
(assert (str.in.re X (re.++ (str.to.re "Host:") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "/bar_pl/shdoclc.fcgi\x0a"))))
; /^\/\d{8,11}\/1[34]\d{8}\.pdf$/U
(assert (str.in.re X (re.++ (str.to.re "//") ((_ re.loop 8 11) (re.range "0" "9")) (str.to.re "/1") (re.union (str.to.re "3") (str.to.re "4")) ((_ re.loop 8 8) (re.range "0" "9")) (str.to.re ".pdf/U\x0a"))))
(check-sat)
