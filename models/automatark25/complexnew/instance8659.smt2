(declare-const X String)
; \.([A-Za-z0-9]{2,5}($|\b\?))
(assert (not (str.in.re X (re.++ (str.to.re ".\x0a") ((_ re.loop 2 5) (re.union (re.range "A" "Z") (re.range "a" "z") (re.range "0" "9"))) (str.to.re "?")))))
; ^((0?[1-9])|((1)[0-1]))?((\.[0-9]{0,2})?|0(\.[0-9]{0,2}))$
(assert (not (str.in.re X (re.++ (re.opt (re.union (re.++ (re.opt (str.to.re "0")) (re.range "1" "9")) (re.++ (str.to.re "1") (re.range "0" "1")))) (re.union (re.opt (re.++ (str.to.re ".") ((_ re.loop 0 2) (re.range "0" "9")))) (re.++ (str.to.re "0.") ((_ re.loop 0 2) (re.range "0" "9")))) (str.to.re "\x0a")))))
; Host\x3A.*User-Agent\x3a\sRequest
(assert (not (str.in.re X (re.++ (str.to.re "Host:") (re.* re.allchar) (str.to.re "User-Agent:") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "Request\x0a")))))
; /^\/uploading\/id=\d+\&u=.*==$/U
(assert (str.in.re X (re.++ (str.to.re "//uploading/id=") (re.+ (re.range "0" "9")) (str.to.re "&u=") (re.* re.allchar) (str.to.re "==/U\x0a"))))
(check-sat)
