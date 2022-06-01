(declare-const X String)
; OS\u{2F}\d+User-Agent\u{3A}User-Agent\u{3A}
(assert (str.in_re X (re.++ (str.to_re "OS/") (re.+ (re.range "0" "9")) (str.to_re "User-Agent:User-Agent:\u{a}"))))
; mywayUser-Agent\u{3A}Host\u{3A}Redirector\u{22}body=FeaR\u{25}200\u{2E}2\u{2E}0\u{25}20Online\u{3A}\u{25}20\u{5B}IP_
(assert (not (str.in_re X (str.to_re "mywayUser-Agent:Host:Redirector\u{22}body=FeaR%200.2.0%20Online:%20[IP_\u{a}"))))
; \u{2F}rssScaneradfsgecoiwnf\u{7D}\u{7B}Trojan\u{3A}logsHost\u{3a}
(assert (str.in_re X (str.to_re "/rssScaneradfsgecoiwnf\u{1b}}{Trojan:logsHost:\u{a}")))
; ^(0[1-9]|[12][0-9]|3[01])/(0[1-9]|1[012])/((19|20)\d{2}|\d{2})$
(assert (str.in_re X (re.++ (re.union (re.++ (str.to_re "0") (re.range "1" "9")) (re.++ (re.union (str.to_re "1") (str.to_re "2")) (re.range "0" "9")) (re.++ (str.to_re "3") (re.union (str.to_re "0") (str.to_re "1")))) (str.to_re "/") (re.union (re.++ (str.to_re "0") (re.range "1" "9")) (re.++ (str.to_re "1") (re.union (str.to_re "0") (str.to_re "1") (str.to_re "2")))) (str.to_re "/") (re.union (re.++ (re.union (str.to_re "19") (str.to_re "20")) ((_ re.loop 2 2) (re.range "0" "9"))) ((_ re.loop 2 2) (re.range "0" "9"))) (str.to_re "\u{a}"))))
(check-sat)
