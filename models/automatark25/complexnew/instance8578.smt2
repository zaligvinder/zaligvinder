(declare-const X String)
; ^(([0]?[1-9])|(1[0-2]))\/(([0]?[1-9])|([1,2]\d{1})|([3][0,1]))\/[12]\d{3}$
(assert (not (str.in.re X (re.++ (re.union (re.++ (re.opt (str.to.re "0")) (re.range "1" "9")) (re.++ (str.to.re "1") (re.range "0" "2"))) (str.to.re "/") (re.union (re.++ (re.opt (str.to.re "0")) (re.range "1" "9")) (re.++ (re.union (str.to.re "1") (str.to.re ",") (str.to.re "2")) ((_ re.loop 1 1) (re.range "0" "9"))) (re.++ (str.to.re "3") (re.union (str.to.re "0") (str.to.re ",") (str.to.re "1")))) (str.to.re "/") (re.union (str.to.re "1") (str.to.re "2")) ((_ re.loop 3 3) (re.range "0" "9")) (str.to.re "\x0a")))))
; information\s+User-Agent\x3AMM_RECO\x2EEXE
(assert (not (str.in.re X (re.++ (str.to.re "information") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "User-Agent:MM_RECO.EXE\x0a")))))
; ^[A-Z]{1,3}\d{6}$
(assert (not (str.in.re X (re.++ ((_ re.loop 1 3) (re.range "A" "Z")) ((_ re.loop 6 6) (re.range "0" "9")) (str.to.re "\x0a")))))
(check-sat)
