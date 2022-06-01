(declare-const X String)
; ^[01]?[- .]?\(?[2-9]\d{2}\)?[- .]?\d{3}[- .]?\d{4}$
(assert (not (str.in_re X (re.++ (re.opt (re.union (str.to_re "0") (str.to_re "1"))) (re.opt (re.union (str.to_re "-") (str.to_re " ") (str.to_re "."))) (re.opt (str.to_re "(")) (re.range "2" "9") ((_ re.loop 2 2) (re.range "0" "9")) (re.opt (str.to_re ")")) (re.opt (re.union (str.to_re "-") (str.to_re " ") (str.to_re "."))) ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (re.union (str.to_re "-") (str.to_re " ") (str.to_re "."))) ((_ re.loop 4 4) (re.range "0" "9")) (str.to_re "\u{a}")))))
; mywayUser-Agent\u{3A}Host\u{3A}Redirector\u{22}body=FeaR\u{25}200\u{2E}2\u{2E}0\u{25}20Online\u{3A}\u{25}20\u{5B}IP_
(assert (not (str.in_re X (str.to_re "mywayUser-Agent:Host:Redirector\u{22}body=FeaR%200.2.0%20Online:%20[IP_\u{a}"))))
; welcome\s+Host\u{3A}\s+ThistoIpHost\u{3A}badurl\u{2E}grandstreetinteractive\u{2E}com
(assert (not (str.in_re X (re.++ (str.to_re "welcome") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Host:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "ThistoIpHost:badurl.grandstreetinteractive.com\u{a}")))))
; ^[1-9]\d?-\d{7}$
(assert (not (str.in_re X (re.++ (re.range "1" "9") (re.opt (re.range "0" "9")) (str.to_re "-") ((_ re.loop 7 7) (re.range "0" "9")) (str.to_re "\u{a}")))))
; /^User-Agent\u{3A}[^\r\n]*malware/miH
(assert (str.in_re X (re.++ (str.to_re "/User-Agent:") (re.* (re.union (str.to_re "\u{d}") (str.to_re "\u{a}"))) (str.to_re "malware/miH\u{a}"))))
(check-sat)
