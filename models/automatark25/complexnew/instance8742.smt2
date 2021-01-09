(declare-const X String)
; User-Agent\x3A\d+Theef2\sHost\x3A
(assert (not (str.in.re X (re.++ (str.to.re "User-Agent:") (re.+ (re.range "0" "9")) (str.to.re "Theef2") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "Host:\x0a")))))
; \x22Thewebsearch\.getmirar\.com
(assert (not (str.in.re X (str.to.re "\x22Thewebsearch.getmirar.com\x0a"))))
; /[a-z]=[a-f0-9]{98}/P
(assert (str.in.re X (re.++ (str.to.re "/") (re.range "a" "z") (str.to.re "=") ((_ re.loop 98 98) (re.union (re.range "a" "f") (re.range "0" "9"))) (str.to.re "/P\x0a"))))
(check-sat)
