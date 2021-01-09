(declare-const X String)
; ^[{|\(]?[0-9a-fA-F]{8}[-]?([0-9a-fA-F]{4}[-]?){3}[0-9a-fA-F]{12}[\)|}]?$
(assert (str.in.re X (re.++ (re.opt (re.union (str.to.re "{") (str.to.re "|") (str.to.re "("))) ((_ re.loop 8 8) (re.union (re.range "0" "9") (re.range "a" "f") (re.range "A" "F"))) (re.opt (str.to.re "-")) ((_ re.loop 3 3) (re.++ ((_ re.loop 4 4) (re.union (re.range "0" "9") (re.range "a" "f") (re.range "A" "F"))) (re.opt (str.to.re "-")))) ((_ re.loop 12 12) (re.union (re.range "0" "9") (re.range "a" "f") (re.range "A" "F"))) (re.opt (re.union (str.to.re ")") (str.to.re "|") (str.to.re "}"))) (str.to.re "\x0a"))))
; ProAgentHost\x3ALOGSeconds\-
(assert (str.in.re X (str.to.re "ProAgentHost:LOGSeconds-\x0a")))
; thesearchresltLoggerHost\x3ABetaHWAEHost\x3Ais
(assert (str.in.re X (str.to.re "thesearchresltLoggerHost:BetaHWAEHost:is\x0a")))
; [0-1]+
(assert (str.in.re X (re.++ (re.+ (re.range "0" "1")) (str.to.re "\x0a"))))
; IDENTIFY666User-Agent\x3A\x5BStaticSend=Host\x3Awww\.iggsey\.com
(assert (not (str.in.re X (str.to.re "IDENTIFY666User-Agent:[StaticSend=Host:www.iggsey.com\x0a"))))
(check-sat)
