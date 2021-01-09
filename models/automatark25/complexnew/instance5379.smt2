(declare-const X String)
; /setAttributeNS\s*\x28[^,]*,[^,]*requiredFeatures[^,]*,\s*[\x22\x27][\s\r\n]+[\x22\x27]/i
(assert (str.in.re X (re.++ (str.to.re "/setAttributeNS") (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "(") (re.* (re.comp (str.to.re ","))) (str.to.re ",") (re.* (re.comp (str.to.re ","))) (str.to.re "requiredFeatures") (re.* (re.comp (str.to.re ","))) (str.to.re ",") (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (re.union (str.to.re "\x22") (str.to.re "'")) (re.+ (re.union (str.to.re "\x0d") (str.to.re "\x0a") (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (re.union (str.to.re "\x22") (str.to.re "'")) (str.to.re "/i\x0a"))))
; mPOPUser-Agent\x3AgotS\x3aUsers\x5cPORT\x3DHXLogOnlyMGS-Internal-Web-Manager
(assert (str.in.re X (str.to.re "mPOPUser-Agent:gotS:Users\x5cPORT=HXLogOnlyMGS-Internal-Web-Manager\x0a")))
; /DEXT87(no|up|\d+\x2e\d+\x2e\d+\x2e\d+)/i
(assert (str.in.re X (re.++ (str.to.re "/DEXT87") (re.union (str.to.re "no") (str.to.re "up") (re.++ (re.+ (re.range "0" "9")) (str.to.re ".") (re.+ (re.range "0" "9")) (str.to.re ".") (re.+ (re.range "0" "9")) (str.to.re ".") (re.+ (re.range "0" "9")))) (str.to.re "/i\x0a"))))
; securityOmFkbWluADROARad\x2Emokead\x2Ecom\x3C\x2Fchat\x3E
(assert (not (str.in.re X (str.to.re "securityOmFkbWluADROARad.mokead.com</chat>\x0a"))))
; HWPEMycount\x2Eyok\x2Ecom
(assert (str.in.re X (str.to.re "HWPEMycount.yok.com\x0a")))
(check-sat)
