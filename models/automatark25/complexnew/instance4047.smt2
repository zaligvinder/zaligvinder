(declare-const X String)
; wjpropqmlpohj\x2flo\s+media\x2Edxcdirect\x2Ecom
(assert (str.in.re X (re.++ (str.to.re "wjpropqmlpohj/lo") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "media.dxcdirect.com\x0a"))))
; (^\d{3,4}\-\d{4}$)|(^\d{7,8}$)
(assert (str.in.re X (re.union (re.++ ((_ re.loop 3 4) (re.range "0" "9")) (str.to.re "-") ((_ re.loop 4 4) (re.range "0" "9"))) (re.++ ((_ re.loop 7 8) (re.range "0" "9")) (str.to.re "\x0a")))))
(check-sat)
