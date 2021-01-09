(declare-const X String)
; /\x0aArray\x0a\x28\x0a\x20{4}\x5b[a-z\d]{11}\x5d\x20\x3d\x3e\x20\d{16}\x0a\x29/i
(assert (str.in.re X (re.++ (str.to.re "/\x0aArray\x0a(\x0a") ((_ re.loop 4 4) (str.to.re " ")) (str.to.re "[") ((_ re.loop 11 11) (re.union (re.range "a" "z") (re.range "0" "9"))) (str.to.re "] => ") ((_ re.loop 16 16) (re.range "0" "9")) (str.to.re "\x0a)/i\x0a"))))
; YWRtaW46cGFzc3dvcmQ[^\n\r]*DA[^\n\r]*Host\x3Awww\x2Ee-finder\x2Ecc
(assert (str.in.re X (re.++ (str.to.re "YWRtaW46cGFzc3dvcmQ") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "DA") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "Host:www.e-finder.cc\x0a"))))
; ^[0-9]{5}([- /]?[0-9]{4})?$
(assert (str.in.re X (re.++ ((_ re.loop 5 5) (re.range "0" "9")) (re.opt (re.++ (re.opt (re.union (str.to.re "-") (str.to.re " ") (str.to.re "/"))) ((_ re.loop 4 4) (re.range "0" "9")))) (str.to.re "\x0a"))))
; /\x2eotf([\?\x5c\x2f]|$)/smiU
(assert (str.in.re X (re.++ (str.to.re "/.otf") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a"))))
(check-sat)
