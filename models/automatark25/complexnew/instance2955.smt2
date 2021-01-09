(declare-const X String)
; /setup=[a-z]\&s=\d\&r=\d{5}$/Ui
(assert (not (str.in.re X (re.++ (str.to.re "/setup=") (re.range "a" "z") (str.to.re "&s=") (re.range "0" "9") (str.to.re "&r=") ((_ re.loop 5 5) (re.range "0" "9")) (str.to.re "/Ui\x0a")))))
; wjpropqmlpohj\x2flo\s+media\x2Edxcdirect\x2Ecom
(assert (not (str.in.re X (re.++ (str.to.re "wjpropqmlpohj/lo") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "media.dxcdirect.com\x0a")))))
; User-Agent\x3A\s+\x7D\x7BPort\x3A
(assert (not (str.in.re X (re.++ (str.to.re "User-Agent:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "}{Port:\x0a")))))
(check-sat)
