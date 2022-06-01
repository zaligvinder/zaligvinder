(declare-const X String)
; wjpropqmlpohj\u{2f}lo\s+media\u{2E}dxcdirect\u{2E}com
(assert (str.in_re X (re.++ (str.to_re "wjpropqmlpohj/lo") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "media.dxcdirect.com\u{a}"))))
; cid=tb\u{2e}\s+NETObserve\s+WinSession
(assert (not (str.in_re X (re.++ (str.to_re "cid=tb.") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "NETObserve") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "WinSession\u{a}")))))
; Fictionaliufilfwulmfi\u{2f}riuf\.lio
(assert (str.in_re X (str.to_re "Fictionaliufilfwulmfi/riuf.lio\u{a}")))
; /DEXT87(no|up|\d+\u{2e}\d+\u{2e}\d+\u{2e}\d+)/i
(assert (str.in_re X (re.++ (str.to_re "/DEXT87") (re.union (str.to_re "no") (str.to_re "up") (re.++ (re.+ (re.range "0" "9")) (str.to_re ".") (re.+ (re.range "0" "9")) (str.to_re ".") (re.+ (re.range "0" "9")) (str.to_re ".") (re.+ (re.range "0" "9")))) (str.to_re "/i\u{a}"))))
; User-Agent\u{3a}Host\u{3A}Host\u{3A}SpyBuddy
(assert (not (str.in_re X (str.to_re "User-Agent:Host:Host:SpyBuddy\u{a}"))))
(check-sat)
