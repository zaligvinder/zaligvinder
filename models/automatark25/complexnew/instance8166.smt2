(declare-const X String)
; User-Agent\x3AUser-Agent\x3AHost\x3ASoftActivityYeah\!
(assert (not (str.in.re X (str.to.re "User-Agent:User-Agent:Host:SoftActivity\x13Yeah!\x0a"))))
; (\d*)'*-*(\d*)/*(\d*)"
(assert (str.in.re X (re.++ (re.* (re.range "0" "9")) (re.* (str.to.re "'")) (re.* (str.to.re "-")) (re.* (re.range "0" "9")) (re.* (str.to.re "/")) (re.* (re.range "0" "9")) (str.to.re "\x22\x0a"))))
(check-sat)
