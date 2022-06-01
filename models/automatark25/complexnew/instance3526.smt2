(declare-const X String)
; mywayUser-Agent\u{3A}Host\u{3A}Redirector\u{22}body=FeaR\u{25}200\u{2E}2\u{2E}0\u{25}20Online\u{3A}\u{25}20\u{5B}IP_
(assert (not (str.in_re X (str.to_re "mywayUser-Agent:Host:Redirector\u{22}body=FeaR%200.2.0%20Online:%20[IP_\u{a}"))))
; ^[0-9](\.[0-9]+)?$
(assert (not (str.in_re X (re.++ (re.range "0" "9") (re.opt (re.++ (str.to_re ".") (re.+ (re.range "0" "9")))) (str.to_re "\u{a}")))))
; e2give\.comConnectionSpywww\u{2E}slinkyslate
(assert (str.in_re X (str.to_re "e2give.comConnectionSpywww.slinkyslate\u{a}")))
(check-sat)
