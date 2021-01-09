(declare-const X String)
; ^\d{2}([0][1-9]|[1][0-2])([0][1-9]|[1-2][0-9]|[3][0-1])-\d{4}$
(assert (not (str.in.re X (re.++ ((_ re.loop 2 2) (re.range "0" "9")) (re.union (re.++ (str.to.re "0") (re.range "1" "9")) (re.++ (str.to.re "1") (re.range "0" "2"))) (re.union (re.++ (str.to.re "0") (re.range "1" "9")) (re.++ (re.range "1" "2") (re.range "0" "9")) (re.++ (str.to.re "3") (re.range "0" "1"))) (str.to.re "-") ((_ re.loop 4 4) (re.range "0" "9")) (str.to.re "\x0a")))))
; LoggerovplUser-Agent\x3At=searchreslt\x7D\x7BSysuptime\x3A
(assert (not (str.in.re X (str.to.re "LoggerovplUser-Agent:t=searchreslt}{Sysuptime:\x0a"))))
; IP\s+\.hta.*Theef2trustyfiles\x2Ecomlogs
(assert (not (str.in.re X (re.++ (str.to.re "IP") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re ".hta") (re.* re.allchar) (str.to.re "Theef2trustyfiles.comlogs\x0a")))))
; Host\x3AHost\x3ALOGServer\.compressxpsp2-toolbar\x2Ehotblox\x2EcomAttached100013Agentsvr\x5E\x5EMerlin
(assert (str.in.re X (str.to.re "Host:Host:LOGServer.compressxpsp2-toolbar.hotblox.comAttached100013Agentsvr^^Merlin\x13\x0a")))
(check-sat)
