(declare-const X String)
; SecureNet.*\x2Fsearchfast\x2F
(assert (str.in.re X (re.++ (str.to.re "SecureNet") (re.* re.allchar) (str.to.re "/searchfast/\x0a"))))
; wjpropqmlpohj\x2flo\s+media\x2Edxcdirect\x2Ecom
(assert (str.in.re X (re.++ (str.to.re "wjpropqmlpohj/lo") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "media.dxcdirect.com\x0a"))))
; ^(http\://){1}(((www\.){1}([a-zA-Z0-9\-]*\.){1,}){1}|([a-zA-Z0-9\-]*\.){1,10}){1}([a-zA-Z]{2,6}\.){1}([a-zA-Z0-9\-\._\?\,\'/\\\+&%\$#\=~])*
(assert (str.in.re X (re.++ ((_ re.loop 1 1) (str.to.re "http://")) ((_ re.loop 1 1) (re.union ((_ re.loop 1 1) (re.++ ((_ re.loop 1 1) (str.to.re "www.")) (re.+ (re.++ (re.* (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to.re "-"))) (str.to.re "."))))) ((_ re.loop 1 10) (re.++ (re.* (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to.re "-"))) (str.to.re "."))))) ((_ re.loop 1 1) (re.++ ((_ re.loop 2 6) (re.union (re.range "a" "z") (re.range "A" "Z"))) (str.to.re "."))) (re.* (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to.re "-") (str.to.re ".") (str.to.re "_") (str.to.re "?") (str.to.re ",") (str.to.re "'") (str.to.re "/") (str.to.re "\x5c") (str.to.re "+") (str.to.re "&") (str.to.re "%") (str.to.re "$") (str.to.re "#") (str.to.re "=") (str.to.re "~"))) (str.to.re "\x0a"))))
(check-sat)
