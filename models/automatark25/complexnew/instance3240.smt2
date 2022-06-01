(declare-const X String)
; /\/[a-z]{4}\.html\?h\=\d{6,7}$/Ui
(assert (not (str.in_re X (re.++ (str.to_re "//") ((_ re.loop 4 4) (re.range "a" "z")) (str.to_re ".html?h=") ((_ re.loop 6 7) (re.range "0" "9")) (str.to_re "/Ui\u{a}")))))
; trustyfiles\u{2E}com\d+lnzzlnbk\u{2f}pkrm\.fin\s+
(assert (str.in_re X (re.++ (str.to_re "trustyfiles.com") (re.+ (re.range "0" "9")) (str.to_re "lnzzlnbk/pkrm.fin") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "\u{a}"))))
; ProAgentHost\u{3a}Host\u{3A}iOpuss_sq=aolsnssigninwininet
(assert (str.in_re X (str.to_re "ProAgentHost:Host:iOpuss_sq=aolsnssigninwininet\u{a}")))
(check-sat)
