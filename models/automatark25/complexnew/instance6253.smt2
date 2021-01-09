(declare-const X String)
; ^0[1-9]\d{7,8}$
(assert (not (str.in.re X (re.++ (str.to.re "0") (re.range "1" "9") ((_ re.loop 7 8) (re.range "0" "9")) (str.to.re "\x0a")))))
; <!--[\\.|\\W|\\w]*?-->
(assert (not (str.in.re X (re.++ (str.to.re "<!--") (re.* (re.union (str.to.re "\x5c") (str.to.re ".") (str.to.re "|") (str.to.re "W") (str.to.re "w"))) (str.to.re "-->\x0a")))))
; ^\$[0-9]+(\.[0-9][0-9])?$
(assert (not (str.in.re X (re.++ (str.to.re "$") (re.+ (re.range "0" "9")) (re.opt (re.++ (str.to.re ".") (re.range "0" "9") (re.range "0" "9"))) (str.to.re "\x0a")))))
; Host\x3A\s+Host\x3A\x7croogoo\x7cTestiufilfwulmfi\x2friuf\.lio
(assert (not (str.in.re X (re.++ (str.to.re "Host:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Host:|roogoo|Testiufilfwulmfi/riuf.lio\x0a")))))
; ([^a-zA-Z0-9])
(assert (not (str.in.re X (re.++ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9")) (str.to.re "\x0a")))))
(check-sat)
