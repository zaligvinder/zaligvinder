(declare-const X String)
; /\x0d\x0aHost\x3a\x20[^\x0d\x0a\x2e]+\x2e[^\x0d\x0a\x2e]+(\x3a\d{1,5})?\x0d\x0a\x0d\x0a$/H
(assert (not (str.in.re X (re.++ (str.to.re "/\x0d\x0aHost: ") (re.+ (re.union (str.to.re "\x0d") (str.to.re "\x0a") (str.to.re "."))) (str.to.re ".") (re.+ (re.union (str.to.re "\x0d") (str.to.re "\x0a") (str.to.re "."))) (re.opt (re.++ (str.to.re ":") ((_ re.loop 1 5) (re.range "0" "9")))) (str.to.re "\x0d\x0a\x0d\x0a/H\x0a")))))
(check-sat)
