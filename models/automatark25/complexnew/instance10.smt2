(declare-const X String)
; ^1[34][0-9][0-9]\/((1[0-2])|([1-9]))\/(([12][0-9])|(3[01])|[1-9])$
(assert (str.in.re X (re.++ (str.to.re "1") (re.union (str.to.re "3") (str.to.re "4")) (re.range "0" "9") (re.range "0" "9") (str.to.re "/") (re.union (re.++ (str.to.re "1") (re.range "0" "2")) (re.range "1" "9")) (str.to.re "/") (re.union (re.++ (re.union (str.to.re "1") (str.to.re "2")) (re.range "0" "9")) (re.++ (str.to.re "3") (re.union (str.to.re "0") (str.to.re "1"))) (re.range "1" "9")) (str.to.re "\x0a"))))
; Project\x2Eearthlinkshprrprt-cs-
(assert (not (str.in.re X (str.to.re "Project.earthlinkshprrprt-cs-\x13\x0a"))))
; \d+(/\d+)?
(assert (str.in.re X (re.++ (re.+ (re.range "0" "9")) (re.opt (re.++ (str.to.re "/") (re.+ (re.range "0" "9")))) (str.to.re "\x0a"))))
; ^([07][1-7]|1[0-6]|2[0-7]|[35][0-9]|[468][0-8]|9[0-589])-?\d{7}$
(assert (not (str.in.re X (re.++ (re.union (re.++ (re.union (str.to.re "0") (str.to.re "7")) (re.range "1" "7")) (re.++ (str.to.re "1") (re.range "0" "6")) (re.++ (str.to.re "2") (re.range "0" "7")) (re.++ (re.union (str.to.re "3") (str.to.re "5")) (re.range "0" "9")) (re.++ (re.union (str.to.re "4") (str.to.re "6") (str.to.re "8")) (re.range "0" "8")) (re.++ (str.to.re "9") (re.union (re.range "0" "5") (str.to.re "8") (str.to.re "9")))) (re.opt (str.to.re "-")) ((_ re.loop 7 7) (re.range "0" "9")) (str.to.re "\x0a")))))
; ^(\d{5}-\d{4}|\d{5})$
(assert (str.in.re X (re.++ (re.union (re.++ ((_ re.loop 5 5) (re.range "0" "9")) (str.to.re "-") ((_ re.loop 4 4) (re.range "0" "9"))) ((_ re.loop 5 5) (re.range "0" "9"))) (str.to.re "\x0a"))))
(check-sat)
