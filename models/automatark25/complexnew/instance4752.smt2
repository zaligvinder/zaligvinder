(declare-const X String)
; ^\{?[a-fA-F\d]{8}-([a-fA-F\d]{4}-){3}[a-fA-F\d]{12}\}?$
(assert (not (str.in.re X (re.++ (re.opt (str.to.re "{")) ((_ re.loop 8 8) (re.union (re.range "a" "f") (re.range "A" "F") (re.range "0" "9"))) (str.to.re "-") ((_ re.loop 3 3) (re.++ ((_ re.loop 4 4) (re.union (re.range "a" "f") (re.range "A" "F") (re.range "0" "9"))) (str.to.re "-"))) ((_ re.loop 12 12) (re.union (re.range "a" "f") (re.range "A" "F") (re.range "0" "9"))) (re.opt (str.to.re "}")) (str.to.re "\x0a")))))
; /filename=[^\n]*\x2eamf/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".amf/i\x0a")))))
; \x2APORT3\x2A\s+Warez.*X-Mailer\x3ASubject\x3AKEY=
(assert (str.in.re X (re.++ (str.to.re "*PORT3*") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Warez") (re.* re.allchar) (str.to.re "X-Mailer:\x13Subject:KEY=\x0a"))))
; /^dns\x7c\d+\x7c\d+\x7C[a-z0-9]+\x2E[a-z]{2,3}\x7C[a-z0-9]+\x7C/
(assert (str.in.re X (re.++ (str.to.re "/dns|") (re.+ (re.range "0" "9")) (str.to.re "|") (re.+ (re.range "0" "9")) (str.to.re "|") (re.+ (re.union (re.range "a" "z") (re.range "0" "9"))) (str.to.re ".") ((_ re.loop 2 3) (re.range "a" "z")) (str.to.re "|") (re.+ (re.union (re.range "a" "z") (re.range "0" "9"))) (str.to.re "|/\x0a"))))
; ^0(5[012345678]|6[47]){1}(\-)?[^0\D]{1}\d{5}$
(assert (str.in.re X (re.++ (str.to.re "0") ((_ re.loop 1 1) (re.union (re.++ (str.to.re "5") (re.union (str.to.re "0") (str.to.re "1") (str.to.re "2") (str.to.re "3") (str.to.re "4") (str.to.re "5") (str.to.re "6") (str.to.re "7") (str.to.re "8"))) (re.++ (str.to.re "6") (re.union (str.to.re "4") (str.to.re "7"))))) (re.opt (str.to.re "-")) ((_ re.loop 1 1) (re.union (str.to.re "0") (re.comp (re.range "0" "9")))) ((_ re.loop 5 5) (re.range "0" "9")) (str.to.re "\x0a"))))
(check-sat)
