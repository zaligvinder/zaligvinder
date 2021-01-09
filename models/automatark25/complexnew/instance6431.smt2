(declare-const X String)
; ^([0-9]{2})(00[1-9]|0[1-9][0-9]|[1-2][0-9][0-9]|3[0-5][0-9]|36[0-6])$
(assert (str.in.re X (re.++ ((_ re.loop 2 2) (re.range "0" "9")) (re.union (re.++ (str.to.re "00") (re.range "1" "9")) (re.++ (str.to.re "0") (re.range "1" "9") (re.range "0" "9")) (re.++ (re.range "1" "2") (re.range "0" "9") (re.range "0" "9")) (re.++ (str.to.re "3") (re.range "0" "5") (re.range "0" "9")) (re.++ (str.to.re "36") (re.range "0" "6"))) (str.to.re "\x0a"))))
; ^1+0+$
(assert (str.in.re X (re.++ (re.+ (str.to.re "1")) (re.+ (str.to.re "0")) (str.to.re "\x0a"))))
; [1-8][0-9]{2}[0-9]{5}
(assert (str.in.re X (re.++ (re.range "1" "8") ((_ re.loop 2 2) (re.range "0" "9")) ((_ re.loop 5 5) (re.range "0" "9")) (str.to.re "\x0a"))))
; YWRtaW46YWRtaW4www\x2Ee-finder\x2EccNSIS_DOWNLOADHost\x3A
(assert (not (str.in.re X (str.to.re "YWRtaW46YWRtaW4www.e-finder.ccNSIS_DOWNLOADHost:\x0a"))))
; /filename=[^\n]*\x2erp/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".rp/i\x0a")))))
(check-sat)
