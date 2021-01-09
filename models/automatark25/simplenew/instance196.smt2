(declare-const X String)
; Host\x3AfromZC-Bridgev\x2Exml\x2FNFO\x2CRegistered
(assert (str.in.re X (str.to.re "Host:fromZC-Bridgev.xml/NFO,Registered\x0a")))
(check-sat)
