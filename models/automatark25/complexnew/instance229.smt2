(declare-const X String)
; /\x2ebcl([\?\x5c\x2f]|$)/smiU
(assert (not (str.in.re X (re.++ (str.to.re "/.bcl") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a")))))
; ^((\d{3}[- ]\d{3}[- ]\d{2}[- ]\d{2})|(\d{3}[- ]\d{2}[- ]\d{2}[- ]\d{3}))$
(assert (str.in.re X (re.++ (re.union (re.++ ((_ re.loop 3 3) (re.range "0" "9")) (re.union (str.to.re "-") (str.to.re " ")) ((_ re.loop 3 3) (re.range "0" "9")) (re.union (str.to.re "-") (str.to.re " ")) ((_ re.loop 2 2) (re.range "0" "9")) (re.union (str.to.re "-") (str.to.re " ")) ((_ re.loop 2 2) (re.range "0" "9"))) (re.++ ((_ re.loop 3 3) (re.range "0" "9")) (re.union (str.to.re "-") (str.to.re " ")) ((_ re.loop 2 2) (re.range "0" "9")) (re.union (str.to.re "-") (str.to.re " ")) ((_ re.loop 2 2) (re.range "0" "9")) (re.union (str.to.re "-") (str.to.re " ")) ((_ re.loop 3 3) (re.range "0" "9")))) (str.to.re "\x0a"))))
; YWRtaW46cGFzc3dvcmQ[^\n\r]*DA[^\n\r]*Host\x3Awww\x2Ee-finder\x2Ecc
(assert (not (str.in.re X (re.++ (str.to.re "YWRtaW46cGFzc3dvcmQ") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "DA") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "Host:www.e-finder.cc\x0a")))))
(check-sat)
