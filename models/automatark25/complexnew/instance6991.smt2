(declare-const X String)
; too[^\n\r]*User-Agent\x3A\sHost\x3A.*IP-WindowsAttachedPalas\x2Estarware\x2Ecom\x2Fdp\x2Fsearch\?x=
(assert (not (str.in.re X (re.++ (str.to.re "too") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "User-Agent:") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "Host:") (re.* re.allchar) (str.to.re "IP-WindowsAttachedPalas.starware.com/dp/search?x=\x0a")))))
; ^([0-9]{1})([0-9]{2})([0-9]{2})([0-9]{7})([0-9]{1})$
(assert (not (str.in.re X (re.++ ((_ re.loop 1 1) (re.range "0" "9")) ((_ re.loop 2 2) (re.range "0" "9")) ((_ re.loop 2 2) (re.range "0" "9")) ((_ re.loop 7 7) (re.range "0" "9")) ((_ re.loop 1 1) (re.range "0" "9")) (str.to.re "\x0a")))))
; ^[a-z]+([a-z0-9-]*[a-z0-9]+)?(\.([a-z]+([a-z0-9-]*[a-z0-9]+)?)+)*$
(assert (str.in.re X (re.++ (re.+ (re.range "a" "z")) (re.opt (re.++ (re.* (re.union (re.range "a" "z") (re.range "0" "9") (str.to.re "-"))) (re.+ (re.union (re.range "a" "z") (re.range "0" "9"))))) (re.* (re.++ (str.to.re ".") (re.+ (re.++ (re.+ (re.range "a" "z")) (re.opt (re.++ (re.* (re.union (re.range "a" "z") (re.range "0" "9") (str.to.re "-"))) (re.+ (re.union (re.range "a" "z") (re.range "0" "9"))))))))) (str.to.re "\x0a"))))
(check-sat)
