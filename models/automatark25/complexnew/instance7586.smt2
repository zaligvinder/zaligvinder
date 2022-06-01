(declare-const X String)
; Host\u{3a}.*ver\dRobert\dDmInf\u{5E}infoSimpsonUser-Agent\u{3A}Clientwww\u{2E}internet-optimizer\u{2E}com
(assert (not (str.in_re X (re.++ (str.to_re "Host:") (re.* re.allchar) (str.to_re "ver") (re.range "0" "9") (str.to_re "Robert") (re.range "0" "9") (str.to_re "DmInf^infoSimpsonUser-Agent:Clientwww.internet-optimizer.com\u{a}")))))
; ^[a-zA-Z0-9\-]+\.cn$
(assert (not (str.in_re X (re.++ (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to_re "-"))) (str.to_re ".cn\u{a}")))))
(check-sat)
