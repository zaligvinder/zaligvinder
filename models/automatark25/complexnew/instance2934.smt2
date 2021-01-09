(declare-const X String)
; \b[A-Z0-9]{5}\d{1}[01567]\d{1}([0][1-9]|[12][0-9]|[3][0-1])\d{1}[A-Z0-9]{3}[A-Z]{2}\b
(assert (not (str.in.re X (re.++ ((_ re.loop 5 5) (re.union (re.range "A" "Z") (re.range "0" "9"))) ((_ re.loop 1 1) (re.range "0" "9")) (re.union (str.to.re "0") (str.to.re "1") (str.to.re "5") (str.to.re "6") (str.to.re "7")) ((_ re.loop 1 1) (re.range "0" "9")) (re.union (re.++ (str.to.re "0") (re.range "1" "9")) (re.++ (re.union (str.to.re "1") (str.to.re "2")) (re.range "0" "9")) (re.++ (str.to.re "3") (re.range "0" "1"))) ((_ re.loop 1 1) (re.range "0" "9")) ((_ re.loop 3 3) (re.union (re.range "A" "Z") (re.range "0" "9"))) ((_ re.loop 2 2) (re.range "A" "Z")) (str.to.re "\x0a")))))
; [-'a-zA-Z]
(assert (str.in.re X (re.++ (re.union (str.to.re "-") (str.to.re "'") (re.range "a" "z") (re.range "A" "Z")) (str.to.re "\x0a"))))
; EI.*to\s+AppName\x2FGRSI\|Server\|Host\x3Aorigin\x3Dsidefind
(assert (str.in.re X (re.++ (str.to.re "EI") (re.* re.allchar) (str.to.re "to") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "AppName/GRSI|Server|\x13Host:origin=sidefind\x0a"))))
(check-sat)
