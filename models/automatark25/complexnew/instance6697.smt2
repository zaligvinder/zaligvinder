(declare-const X String)
; wjpropqmlpohj\x2flo\s+media\x2Edxcdirect\x2Ecom
(assert (str.in.re X (re.++ (str.to.re "wjpropqmlpohj/lo") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "media.dxcdirect.com\x0a"))))
; cid=tb\x2e\s+NETObserve\s+WinSession
(assert (not (str.in.re X (re.++ (str.to.re "cid=tb.") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "NETObserve") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "WinSession\x0a")))))
; Fictionaliufilfwulmfi\x2friuf\.lio
(assert (str.in.re X (str.to.re "Fictionaliufilfwulmfi/riuf.lio\x0a")))
; /DEXT87(no|up|\d+\x2e\d+\x2e\d+\x2e\d+)/i
(assert (str.in.re X (re.++ (str.to.re "/DEXT87") (re.union (str.to.re "no") (str.to.re "up") (re.++ (re.+ (re.range "0" "9")) (str.to.re ".") (re.+ (re.range "0" "9")) (str.to.re ".") (re.+ (re.range "0" "9")) (str.to.re ".") (re.+ (re.range "0" "9")))) (str.to.re "/i\x0a"))))
; User-Agent\x3aHost\x3AHost\x3ASpyBuddy
(assert (not (str.in.re X (str.to.re "User-Agent:Host:Host:SpyBuddy\x0a"))))
(check-sat)
