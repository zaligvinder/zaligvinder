(declare-const X String)
; www\u{2E}purityscan\u{2E}com.*
(assert (not (str.in_re X (re.++ (str.to_re "www.purityscan.com") (re.* re.allchar) (str.to_re "\u{a}")))))
; ^\d{1,5}(\.\d{1,2})?$
(assert (not (str.in_re X (re.++ ((_ re.loop 1 5) (re.range "0" "9")) (re.opt (re.++ (str.to_re ".") ((_ re.loop 1 2) (re.range "0" "9")))) (str.to_re "\u{a}")))))
; Host\u{3A}Host\u{3A}LOGServer\.compressxpsp2-toolbar\u{2E}hotblox\u{2E}comAttached100013Agentsvr\u{5E}\u{5E}Merlin
(assert (str.in_re X (str.to_re "Host:Host:LOGServer.compressxpsp2-toolbar.hotblox.comAttached100013Agentsvr^^Merlin\u{13}\u{a}")))
; Contact\d+Host\u{3A}[^\n\r]*User-Agent\u{3A}Host\u{3a}MailHost\u{3a}MSNLOGOVN
(assert (str.in_re X (re.++ (str.to_re "Contact") (re.+ (re.range "0" "9")) (str.to_re "Host:") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "User-Agent:Host:MailHost:MSNLOGOVN\u{a}"))))
; / \u{2D} .{1,20}\u{7}(LAN|PROXY|MODEM|MODEM BUSY|UNKNOWN)\u{7}Win/
(assert (not (str.in_re X (re.++ (str.to_re "/ - ") ((_ re.loop 1 20) re.allchar) (str.to_re "\u{7}") (re.union (str.to_re "LAN") (str.to_re "PROXY") (str.to_re "MODEM") (str.to_re "MODEM BUSY") (str.to_re "UNKNOWN")) (str.to_re "\u{7}Win/\u{a}")))))
(check-sat)
