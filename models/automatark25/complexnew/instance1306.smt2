(declare-const X String)
; Windows\x2Fclient\x2FBlackreportc\.goclick\.comX-Sender\x3A
(assert (not (str.in.re X (str.to.re "Windows/client/Blackreportc.goclick.comX-Sender:\x13\x0a"))))
; Port\s+AgentHost\x3Ainsertkeys\x3Ckeys\x40hotpop
(assert (str.in.re X (re.++ (str.to.re "Port") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "AgentHost:insertkeys<keys@hotpop\x0a"))))
; (\"http:\/\/www\.youtube\.com\/v\/\w{11}\&rel\=1\")
(assert (str.in.re X (re.++ (str.to.re "\x0a\x22http://www.youtube.com/v/") ((_ re.loop 11 11) (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "&rel=1\x22"))))
(check-sat)
