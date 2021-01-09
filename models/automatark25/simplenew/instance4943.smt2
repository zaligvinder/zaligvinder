(declare-const X String)
; SpyAgent\d+nick_name=CIA-Test\d+url=http\x3AHANDY\x2FNFO\x2CRegistered
(assert (str.in.re X (re.++ (str.to.re "SpyAgent") (re.+ (re.range "0" "9")) (str.to.re "nick_name=CIA-Test") (re.+ (re.range "0" "9")) (str.to.re "url=http:\x1bHANDY/NFO,Registered\x0a"))))
(check-sat)
