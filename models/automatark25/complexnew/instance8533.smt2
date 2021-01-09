(declare-const X String)
; dl\x2Eweb-nexus\x2Enet\d+www\x2Eonlinecasinoextra\x2Ecomsqlads\.grokads\.com
(assert (str.in.re X (re.++ (str.to.re "dl.web-nexus.net") (re.+ (re.range "0" "9")) (str.to.re "www.onlinecasinoextra.comsqlads.grokads.com\x0a"))))
; \.exe\s+ZC-Bridgev\x2Exml\x2FNFO\x2CRegistered
(assert (str.in.re X (re.++ (str.to.re ".exe") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "ZC-Bridgev.xml/NFO,Registered\x0a"))))
(check-sat)
