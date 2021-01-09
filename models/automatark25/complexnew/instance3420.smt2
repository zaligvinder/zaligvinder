(declare-const X String)
; /filename=[^\n]*\x2eaom/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".aom/i\x0a"))))
; (^\d{1,9})+(,\d{1,9})*$
(assert (str.in.re X (re.++ (re.+ ((_ re.loop 1 9) (re.range "0" "9"))) (re.* (re.++ (str.to.re ",") ((_ re.loop 1 9) (re.range "0" "9")))) (str.to.re "\x0a"))))
; ^1[34][0-9][0-9]\/((1[0-2])|([1-9]))\/(([12][0-9])|(3[01])|[1-9])$
(assert (str.in.re X (re.++ (str.to.re "1") (re.union (str.to.re "3") (str.to.re "4")) (re.range "0" "9") (re.range "0" "9") (str.to.re "/") (re.union (re.++ (str.to.re "1") (re.range "0" "2")) (re.range "1" "9")) (str.to.re "/") (re.union (re.++ (re.union (str.to.re "1") (str.to.re "2")) (re.range "0" "9")) (re.++ (str.to.re "3") (re.union (str.to.re "0") (str.to.re "1"))) (re.range "1" "9")) (str.to.re "\x0a"))))
(check-sat)
