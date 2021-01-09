(declare-const X String)
; Kontiki\s+resultsmaster\x2Ecom\x7croogoo\x7c
(assert (str.in.re X (re.++ (str.to.re "Kontiki") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "resultsmaster.com\x13|roogoo|\x0a"))))
; ((079)|(078)|(077)){1}[0-9]{7}
(assert (str.in.re X (re.++ ((_ re.loop 1 1) (re.union (str.to.re "079") (str.to.re "078") (str.to.re "077"))) ((_ re.loop 7 7) (re.range "0" "9")) (str.to.re "\x0a"))))
; ^([1-9]+)?[13579]$
(assert (not (str.in.re X (re.++ (re.opt (re.+ (re.range "1" "9"))) (re.union (str.to.re "1") (str.to.re "3") (str.to.re "5") (str.to.re "7") (str.to.re "9")) (str.to.re "\x0a")))))
; /\x2eaif[cf]?([\?\x5c\x2f]|$)/smiU
(assert (str.in.re X (re.++ (str.to.re "/.aif") (re.opt (re.union (str.to.re "c") (str.to.re "f"))) (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a"))))
(check-sat)
