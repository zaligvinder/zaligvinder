(declare-const X String)
; \x7D\x7BUser\x3A\d+Host\x3AUser-Agent\x3Aadblock\x2Elinkz\x2Ecom
(assert (str.in.re X (re.++ (str.to.re "}{User:") (re.+ (re.range "0" "9")) (str.to.re "Host:User-Agent:adblock.linkz.com\x0a"))))
(check-sat)
