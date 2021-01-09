(declare-const X String)
; www\x2Eblazefind\x2Ecom.*started\x2E\s+CodeguruBrowserwww\x2Esogou\x2Ecom
(assert (not (str.in.re X (re.++ (str.to.re "www.blazefind.com") (re.* re.allchar) (str.to.re "started.") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "CodeguruBrowserwww.sogou.com\x0a")))))
; ^([0]?\d|1\d|2[0-3]):([0-5]\d):([0-5]\d)$
(assert (not (str.in.re X (re.++ (re.union (re.++ (re.opt (str.to.re "0")) (re.range "0" "9")) (re.++ (str.to.re "1") (re.range "0" "9")) (re.++ (str.to.re "2") (re.range "0" "3"))) (str.to.re "::\x0a") (re.range "0" "5") (re.range "0" "9") (re.range "0" "5") (re.range "0" "9")))))
; ^\d+?(\.\d+)?$
(assert (str.in.re X (re.++ (re.+ (re.range "0" "9")) (re.opt (re.++ (str.to.re ".") (re.+ (re.range "0" "9")))) (str.to.re "\x0a"))))
(check-sat)
