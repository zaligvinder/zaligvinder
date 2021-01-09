(declare-const X String)
; \d{1,3}.?\d{0,3}\s[a-zA-Z]{2,30}\s[a-zA-Z]{2,15}
(assert (str.in.re X (re.++ ((_ re.loop 1 3) (re.range "0" "9")) (re.opt re.allchar) ((_ re.loop 0 3) (re.range "0" "9")) (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) ((_ re.loop 2 30) (re.union (re.range "a" "z") (re.range "A" "Z"))) (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) ((_ re.loop 2 15) (re.union (re.range "a" "z") (re.range "A" "Z"))) (str.to.re "\x0a"))))
; Host\x3a\dOVNUsertooffers\x2Ebullseye-network\x2Ecom
(assert (str.in.re X (re.++ (str.to.re "Host:") (re.range "0" "9") (str.to.re "OVNUsertooffers.bullseye-network.com\x0a"))))
; HXLogOnlyDaemonactivityIterenetFrom\x3AClass
(assert (not (str.in.re X (str.to.re "HXLogOnlyDaemonactivityIterenetFrom:Class\x0a"))))
; ([a-zA-Z]:(\\w+)*\\[a-zA-Z0_9]+)?.xls
(assert (not (str.in.re X (re.++ (re.opt (re.++ (re.union (re.range "a" "z") (re.range "A" "Z")) (str.to.re ":") (re.* (re.++ (str.to.re "\x5c") (re.+ (str.to.re "w")))) (str.to.re "\x5c") (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (str.to.re "0") (str.to.re "_") (str.to.re "9"))))) re.allchar (str.to.re "xls\x0a")))))
(check-sat)
