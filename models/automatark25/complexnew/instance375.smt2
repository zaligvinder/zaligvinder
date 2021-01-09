(declare-const X String)
; ^\d{3,3}\.\d{0,2}$|^E\d{3,3}\.\d{0,2}$
(assert (not (str.in.re X (re.union (re.++ ((_ re.loop 3 3) (re.range "0" "9")) (str.to.re ".") ((_ re.loop 0 2) (re.range "0" "9"))) (re.++ (str.to.re "E") ((_ re.loop 3 3) (re.range "0" "9")) (str.to.re ".") ((_ re.loop 0 2) (re.range "0" "9")) (str.to.re "\x0a"))))))
; /filename=[^\n]*\x2eemf/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".emf/i\x0a")))))
; /\/images\/[a-zA-Z]\.php\?id\=[0-9]{2,3}(\.\d)?$/Ui
(assert (str.in.re X (re.++ (str.to.re "//images/") (re.union (re.range "a" "z") (re.range "A" "Z")) (str.to.re ".php?id=") ((_ re.loop 2 3) (re.range "0" "9")) (re.opt (re.++ (str.to.re ".") (re.range "0" "9"))) (str.to.re "/Ui\x0a"))))
; configINTERNAL\.ini\s+User-Agent\x3A\s+Host\x3ASubject\x3a
(assert (str.in.re X (re.++ (str.to.re "configINTERNAL.ini") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "User-Agent:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Host:Subject:\x0a"))))
(check-sat)
