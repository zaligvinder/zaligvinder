(declare-const X String)
; Host\x3a\s+ServerToolbar
(assert (not (str.in.re X (re.++ (str.to.re "Host:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "ServerToolbar\x0a")))))
; [()+-.0-9]*
(assert (not (str.in.re X (re.++ (re.* (re.union (str.to.re "(") (str.to.re ")") (re.range "+" ".") (re.range "0" "9"))) (str.to.re "\x0a")))))
(check-sat)
