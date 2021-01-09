(declare-const X String)
; Subject\x3aSpywareSpyBuddy
(assert (not (str.in.re X (str.to.re "Subject:SpywareSpyBuddy\x0a"))))
; /^[a-z]{5}\d=_\d_/C
(assert (not (str.in.re X (re.++ (str.to.re "/") ((_ re.loop 5 5) (re.range "a" "z")) (re.range "0" "9") (str.to.re "=_") (re.range "0" "9") (str.to.re "_/C\x0a")))))
; User-Agent\x3A\s+GET\d+\x2Fcommunicatortb
(assert (str.in.re X (re.++ (str.to.re "User-Agent:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "GET") (re.+ (re.range "0" "9")) (str.to.re "/communicatortb\x0a"))))
; pgwtjgxwthx\x2fbyb\.xkyLOGurl=enews\x2Eearthlink\x2Enet
(assert (not (str.in.re X (str.to.re "pgwtjgxwthx/byb.xkyLOGurl=enews.earthlink.net\x0a"))))
(check-sat)
