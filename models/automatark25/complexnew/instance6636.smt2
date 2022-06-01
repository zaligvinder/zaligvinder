(declare-const X String)
; ^\d{2}([0][1-9]|[1][0-2])([0][1-9]|[1-2][0-9]|[3][0-1])-\d{4}$
(assert (not (str.in_re X (re.++ ((_ re.loop 2 2) (re.range "0" "9")) (re.union (re.++ (str.to_re "0") (re.range "1" "9")) (re.++ (str.to_re "1") (re.range "0" "2"))) (re.union (re.++ (str.to_re "0") (re.range "1" "9")) (re.++ (re.range "1" "2") (re.range "0" "9")) (re.++ (str.to_re "3") (re.range "0" "1"))) (str.to_re "-") ((_ re.loop 4 4) (re.range "0" "9")) (str.to_re "\u{a}")))))
; LoggerovplUser-Agent\u{3A}t=searchreslt\u{7D}\u{7B}Sysuptime\u{3A}
(assert (not (str.in_re X (str.to_re "LoggerovplUser-Agent:t=searchreslt}{Sysuptime:\u{a}"))))
; IP\s+\.hta.*Theef2trustyfiles\u{2E}comlogs
(assert (not (str.in_re X (re.++ (str.to_re "IP") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re ".hta") (re.* re.allchar) (str.to_re "Theef2trustyfiles.comlogs\u{a}")))))
; Host\u{3A}Host\u{3A}LOGServer\.compressxpsp2-toolbar\u{2E}hotblox\u{2E}comAttached100013Agentsvr\u{5E}\u{5E}Merlin
(assert (str.in_re X (str.to_re "Host:Host:LOGServer.compressxpsp2-toolbar.hotblox.comAttached100013Agentsvr^^Merlin\u{13}\u{a}")))
(check-sat)
