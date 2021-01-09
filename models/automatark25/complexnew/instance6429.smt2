(declare-const X String)
; ('{2})*([^'\r\n]*)('{2})*([^'\r\n]*)('{2})*
(assert (not (str.in.re X (re.++ (re.* ((_ re.loop 2 2) (str.to.re "'"))) (re.* (re.union (str.to.re "'") (str.to.re "\x0d") (str.to.re "\x0a"))) (re.* ((_ re.loop 2 2) (str.to.re "'"))) (re.* (re.union (str.to.re "'") (str.to.re "\x0d") (str.to.re "\x0a"))) (re.* ((_ re.loop 2 2) (str.to.re "'"))) (str.to.re "\x0a")))))
; Host\x3AHost\x3ALOGServer\.compressxpsp2-toolbar\x2Ehotblox\x2EcomAttached100013Agentsvr\x5E\x5EMerlin
(assert (not (str.in.re X (str.to.re "Host:Host:LOGServer.compressxpsp2-toolbar.hotblox.comAttached100013Agentsvr^^Merlin\x13\x0a"))))
; ^[-]?\d{1,10}\.?([0-9][0-9])?$
(assert (not (str.in.re X (re.++ (re.opt (str.to.re "-")) ((_ re.loop 1 10) (re.range "0" "9")) (re.opt (str.to.re ".")) (re.opt (re.++ (re.range "0" "9") (re.range "0" "9"))) (str.to.re "\x0a")))))
(check-sat)
