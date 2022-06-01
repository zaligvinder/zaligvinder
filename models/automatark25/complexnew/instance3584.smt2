(declare-const X String)
; IDENTIFY666User-Agent\u{3A}\u{5B}StaticSend=Host\u{3A}www\.iggsey\.com
(assert (not (str.in_re X (str.to_re "IDENTIFY666User-Agent:[StaticSend=Host:www.iggsey.com\u{a}"))))
; Host\u{3A}Host\u{3A}LOGServer\.compressxpsp2-toolbar\u{2E}hotblox\u{2E}comAttached100013Agentsvr\u{5E}\u{5E}Merlin
(assert (not (str.in_re X (str.to_re "Host:Host:LOGServer.compressxpsp2-toolbar.hotblox.comAttached100013Agentsvr^^Merlin\u{13}\u{a}"))))
(check-sat)
