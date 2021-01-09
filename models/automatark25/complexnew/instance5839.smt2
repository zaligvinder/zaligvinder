(declare-const X String)
; /^\/0[a-z]{0,13}[0-9]{0,12}[a-z][a-z0-9]{1,11}$/U
(assert (not (str.in.re X (re.++ (str.to.re "//0") ((_ re.loop 0 13) (re.range "a" "z")) ((_ re.loop 0 12) (re.range "0" "9")) (re.range "a" "z") ((_ re.loop 1 11) (re.union (re.range "a" "z") (re.range "0" "9"))) (str.to.re "/U\x0a")))))
; fsbuff\s+User-Agent\x3Afrom\x3A
(assert (str.in.re X (re.++ (str.to.re "fsbuff") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "User-Agent:from:\x0a"))))
; /\/[a-f0-9]{32}\.jar/
(assert (str.in.re X (re.++ (str.to.re "//") ((_ re.loop 32 32) (re.union (re.range "a" "f") (re.range "0" "9"))) (str.to.re ".jar/\x0a"))))
; dialup\x5fvpn\x40hermangroup\x2EorgUser-Agent\x3A
(assert (str.in.re X (str.to.re "dialup_vpn@hermangroup.orgUser-Agent:\x0a")))
; \x2Fsearchfast\x2F\s+Host\x3A\s+
(assert (not (str.in.re X (re.++ (str.to.re "/searchfast/") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Host:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "\x0a")))))
(check-sat)
