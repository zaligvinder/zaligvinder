(declare-const X String)
; ^[0-9]{0,5}[ ]{0,1}[0-9]{0,6}$
(assert (str.in.re X (re.++ ((_ re.loop 0 5) (re.range "0" "9")) (re.opt (str.to.re " ")) ((_ re.loop 0 6) (re.range "0" "9")) (str.to.re "\x0a"))))
; Uin=\s+\.htaServerTheef2trustyfiles\x2EcomlogsHost\x3A
(assert (not (str.in.re X (re.++ (str.to.re "Uin=") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re ".htaServerTheef2trustyfiles.comlogsHost:\x0a")))))
; Host\x3AAddressDaemonUser-Agent\x3AUser-Agent\x3a
(assert (not (str.in.re X (str.to.re "Host:AddressDaemonUser-Agent:User-Agent:\x0a"))))
(check-sat)
