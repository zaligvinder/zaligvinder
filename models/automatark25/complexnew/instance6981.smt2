(declare-const X String)
; ^\{(.+)|^\\(.+)|(\}*)
(assert (not (str.in.re X (re.union (re.++ (str.to.re "{") (re.+ re.allchar)) (re.++ (str.to.re "\x5c") (re.+ re.allchar)) (re.++ (re.* (str.to.re "}")) (str.to.re "\x0a"))))))
; ^((0|[1-9]+[0-9]*)-(0|[1-9]+[0-9]*);|(0|[1-9]+[0-9]*);)*?((0|[1-9]+[0-9]*)-(0|[1-9]+[0-9]*)|(0|[1-9]+[0-9]*)){1}$
(assert (str.in.re X (re.++ (re.* (re.union (re.++ (re.union (str.to.re "0") (re.++ (re.+ (re.range "1" "9")) (re.* (re.range "0" "9")))) (str.to.re "-") (re.union (str.to.re "0") (re.++ (re.+ (re.range "1" "9")) (re.* (re.range "0" "9")))) (str.to.re ";")) (re.++ (re.union (str.to.re "0") (re.++ (re.+ (re.range "1" "9")) (re.* (re.range "0" "9")))) (str.to.re ";")))) ((_ re.loop 1 1) (re.union (re.++ (re.union (str.to.re "0") (re.++ (re.+ (re.range "1" "9")) (re.* (re.range "0" "9")))) (str.to.re "-") (re.union (str.to.re "0") (re.++ (re.+ (re.range "1" "9")) (re.* (re.range "0" "9"))))) (str.to.re "0") (re.++ (re.+ (re.range "1" "9")) (re.* (re.range "0" "9"))))) (str.to.re "\x0a"))))
; Log[^\n\r]*Host\x3A\dHOST\x3AUser-Agent\x3A
(assert (not (str.in.re X (re.++ (str.to.re "Log") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "Host:") (re.range "0" "9") (str.to.re "HOST:User-Agent:\x0a")))))
; ^.*(yourdomain.com).*$
(assert (not (str.in.re X (re.++ (re.* re.allchar) (re.* re.allchar) (str.to.re "\x0ayourdomain") re.allchar (str.to.re "com")))))
(check-sat)
