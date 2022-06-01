(declare-const X String)
; Subject\u{3A}\swww\u{2E}searchwords\u{2E}com
(assert (str.in_re X (re.++ (str.to_re "Subject:") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "www.searchwords.com\u{a}"))))
; Stealth\u{2E}phpSpyAgentHost\u{3A}IterenetUser-Agent\u{3A}Host\u{3A}Host\u{3A}origin\u{3D}sidefind
(assert (not (str.in_re X (str.to_re "Stealth.phpSpyAgentHost:IterenetUser-Agent:Host:Host:origin=sidefind\u{a}"))))
; (\d{4,6})
(assert (str.in_re X (re.++ ((_ re.loop 4 6) (re.range "0" "9")) (str.to_re "\u{a}"))))
; wowokay\d+FTP\s+Host\u{3A}Filtered\u{22}reaction\u{2E}txt\u{22}
(assert (not (str.in_re X (re.++ (str.to_re "wowokay") (re.+ (re.range "0" "9")) (str.to_re "FTP") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Host:Filtered\u{22}reaction.txt\u{22}\u{a}")))))
(check-sat)
