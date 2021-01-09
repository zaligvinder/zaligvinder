(declare-const X String)
; Host\x3a\dATTENTION\x3A.*User-Agent\x3A
(assert (str.in.re X (re.++ (str.to.re "Host:") (re.range "0" "9") (str.to.re "ATTENTION:") (re.* re.allchar) (str.to.re "User-Agent:\x0a"))))
; \x2Ehtml.*cm.*www\x2Epeer2mail\x2EcomConnectedStubbyawbeta\.net-nucleus\.com
(assert (str.in.re X (re.++ (str.to.re ".html") (re.* re.allchar) (str.to.re "cm") (re.* re.allchar) (str.to.re "www.peer2mail.comConnectedStubbyawbeta.net-nucleus.com\x0a"))))
; ATL\w+SoftActivitypassword\x3B0\x3BIncorrect
(assert (str.in.re X (re.++ (str.to.re "ATL") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "SoftActivity\x13password;0;Incorrect\x0a"))))
; ^[a-zA-Z]+(([\'\,\.\-][a-zA-Z])?[a-zA-Z]*)*$
(assert (str.in.re X (re.++ (re.+ (re.union (re.range "a" "z") (re.range "A" "Z"))) (re.* (re.++ (re.opt (re.++ (re.union (str.to.re "'") (str.to.re ",") (str.to.re ".") (str.to.re "-")) (re.union (re.range "a" "z") (re.range "A" "Z")))) (re.* (re.union (re.range "a" "z") (re.range "A" "Z"))))) (str.to.re "\x0a"))))
; ^[+-]?[0-9]+$
(assert (not (str.in.re X (re.++ (re.opt (re.union (str.to.re "+") (str.to.re "-"))) (re.+ (re.range "0" "9")) (str.to.re "\x0a")))))
(check-sat)
