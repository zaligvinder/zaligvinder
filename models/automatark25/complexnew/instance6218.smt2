(declare-const X String)
; /^\/[a-f0-9]{32}\/[a-z]{1,15}-[a-z]{1,15}\.php/U
(assert (str.in.re X (re.++ (str.to.re "//") ((_ re.loop 32 32) (re.union (re.range "a" "f") (re.range "0" "9"))) (str.to.re "/") ((_ re.loop 1 15) (re.range "a" "z")) (str.to.re "-") ((_ re.loop 1 15) (re.range "a" "z")) (str.to.re ".php/U\x0a"))))
; IPUSER-Host\x3AUser-Agent\x3A\x2Fsearchfast\x2F
(assert (not (str.in.re X (str.to.re "IPUSER-Host:User-Agent:/searchfast/\x0a"))))
(check-sat)
