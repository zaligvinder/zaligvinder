(declare-const X String)
; dll\x3F\w+updates\w+Host\x3aSoftwareHost\x3Ajoke
(assert (str.in.re X (re.++ (str.to.re "dll?") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "updates") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "Host:SoftwareHost:joke\x0a"))))
; Host\x3A\x2Fta\x2FNEWS\x2Fyayad\x2Ecom
(assert (str.in.re X (str.to.re "Host:/ta/NEWS/yayad.com\x13\x0a")))
; ^\d*(\.\d*)$
(assert (str.in.re X (re.++ (re.* (re.range "0" "9")) (str.to.re "\x0a.") (re.* (re.range "0" "9")))))
; com\x2Findex\.php\?tpid=.*pop\x2Epopuptoast\x2Ecom.*Host\x3A
(assert (str.in.re X (re.++ (str.to.re "com/index.php?tpid=") (re.* re.allchar) (str.to.re "pop.popuptoast.com") (re.* re.allchar) (str.to.re "Host:\x0a"))))
; /^die\x7c\d+\x7c\d+\x7C[a-z0-9]+\x2E[a-z]{2,3}\x7C[a-z0-9]+\x7C/
(assert (str.in.re X (re.++ (str.to.re "/die|") (re.+ (re.range "0" "9")) (str.to.re "|") (re.+ (re.range "0" "9")) (str.to.re "|") (re.+ (re.union (re.range "a" "z") (re.range "0" "9"))) (str.to.re ".") ((_ re.loop 2 3) (re.range "a" "z")) (str.to.re "|") (re.+ (re.union (re.range "a" "z") (re.range "0" "9"))) (str.to.re "|/\x0a"))))
(check-sat)
