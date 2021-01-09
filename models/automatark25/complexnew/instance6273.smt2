(declare-const X String)
; MSNLOGOVNUsertooffers\x2Ebullseye-network\x2Ecom
(assert (str.in.re X (str.to.re "MSNLOGOVNUsertooffers.bullseye-network.com\x0a")))
; ^[A-Za-z]{2}[0-9]{6}[A-Za-z]{1}$
(assert (not (str.in.re X (re.++ ((_ re.loop 2 2) (re.union (re.range "A" "Z") (re.range "a" "z"))) ((_ re.loop 6 6) (re.range "0" "9")) ((_ re.loop 1 1) (re.union (re.range "A" "Z") (re.range "a" "z"))) (str.to.re "\x0a")))))
; FTP.*www\x2Ewordiq\x2Ecom
(assert (str.in.re X (re.++ (str.to.re "FTP") (re.* re.allchar) (str.to.re "www.wordiq.com\x1b\x0a"))))
; this\w+c\.goclick\.com\d
(assert (str.in.re X (re.++ (str.to.re "this") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "c.goclick.com") (re.range "0" "9") (str.to.re "\x0a"))))
(check-sat)
