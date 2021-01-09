(declare-const X String)
; show\x2Eroogoo\x2Ecom\s+report\<\x2Ftitle\>Host\x3a\.fcgi
(assert (str.in.re X (re.++ (str.to.re "show.roogoo.com") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "report</title>Host:.fcgi\x0a"))))
; /^connect\x7c\d+\x7c\d+\x7C[a-z0-9]+\x2E[a-z]{2,3}\x7C[a-z0-9]+\x7C/
(assert (str.in.re X (re.++ (str.to.re "/connect|") (re.+ (re.range "0" "9")) (str.to.re "|") (re.+ (re.range "0" "9")) (str.to.re "|") (re.+ (re.union (re.range "a" "z") (re.range "0" "9"))) (str.to.re ".") ((_ re.loop 2 3) (re.range "a" "z")) (str.to.re "|") (re.+ (re.union (re.range "a" "z") (re.range "0" "9"))) (str.to.re "|/\x0a"))))
; (""|[^"])*
(assert (not (str.in.re X (re.++ (re.* (re.union (str.to.re "\x22\x22") (re.comp (str.to.re "\x22")))) (str.to.re "\x0a")))))
(check-sat)
