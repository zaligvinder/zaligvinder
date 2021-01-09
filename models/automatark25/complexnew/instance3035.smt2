(declare-const X String)
; corep\x2Edmcast\x2EcomOwner\x3A
(assert (str.in.re X (str.to.re "corep.dmcast.comOwner:\x0a")))
; wjpropqmlpohj\x2flo\s+media\x2Edxcdirect\x2Ecom
(assert (str.in.re X (re.++ (str.to.re "wjpropqmlpohj/lo") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "media.dxcdirect.com\x0a"))))
(check-sat)
