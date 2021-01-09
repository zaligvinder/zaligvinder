(declare-const X String)
; www\x2Epurityscan\x2Ecom.*
(assert (not (str.in.re X (re.++ (str.to.re "www.purityscan.com") (re.* re.allchar) (str.to.re "\x0a")))))
; ^\d{1,5}(\.\d{1,2})?$
(assert (not (str.in.re X (re.++ ((_ re.loop 1 5) (re.range "0" "9")) (re.opt (re.++ (str.to.re ".") ((_ re.loop 1 2) (re.range "0" "9")))) (str.to.re "\x0a")))))
; Host\x3AHost\x3ALOGServer\.compressxpsp2-toolbar\x2Ehotblox\x2EcomAttached100013Agentsvr\x5E\x5EMerlin
(assert (str.in.re X (str.to.re "Host:Host:LOGServer.compressxpsp2-toolbar.hotblox.comAttached100013Agentsvr^^Merlin\x13\x0a")))
; Contact\d+Host\x3A[^\n\r]*User-Agent\x3AHost\x3aMailHost\x3aMSNLOGOVN
(assert (str.in.re X (re.++ (str.to.re "Contact") (re.+ (re.range "0" "9")) (str.to.re "Host:") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "User-Agent:Host:MailHost:MSNLOGOVN\x0a"))))
; / \x2D .{1,20}\x07(LAN|PROXY|MODEM|MODEM BUSY|UNKNOWN)\x07Win/
(assert (not (str.in.re X (re.++ (str.to.re "/ - ") ((_ re.loop 1 20) re.allchar) (str.to.re "\x07") (re.union (str.to.re "LAN") (str.to.re "PROXY") (str.to.re "MODEM") (str.to.re "MODEM BUSY") (str.to.re "UNKNOWN")) (str.to.re "\x07Win/\x0a")))))
(check-sat)
