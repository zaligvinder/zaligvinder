(declare-const X String)
; ^([1][0-9]|[0-9])[1-9]{2}$
(assert (not (str.in.re X (re.++ (re.union (re.++ (str.to.re "1") (re.range "0" "9")) (re.range "0" "9")) ((_ re.loop 2 2) (re.range "1" "9")) (str.to.re "\x0a")))))
; \x28BDLL\x29\s+CD\x2F.*Host\x3A
(assert (str.in.re X (re.++ (str.to.re "(BDLL)\x13") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "CD/") (re.* re.allchar) (str.to.re "Host:\x0a"))))
(check-sat)
