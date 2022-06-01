(declare-const X String)
; 195\.225\.\<title\>Actual
(assert (str.in_re X (str.to_re "195.225.<title>Actual\u{a}")))
; searchnugget\s+User-Agent\u{3A}\s+Downloadfowclxccdxn\u{2f}uxwn\.ddy
(assert (str.in_re X (re.++ (str.to_re "searchnugget\u{13}") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "User-Agent:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Downloadfowclxccdxn/uxwn.ddy\u{a}"))))
; /filename=[\u{22}\u{27}]?\d\.exe[\u{22}\u{27}]?/Hi
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.opt (re.union (str.to_re "\u{22}") (str.to_re "'"))) (re.range "0" "9") (str.to_re ".exe") (re.opt (re.union (str.to_re "\u{22}") (str.to_re "'"))) (str.to_re "/Hi\u{a}")))))
; Cookie\u{3a}.*Host\u{3A}.*ldap\u{3A}\u{2F}\u{2F}
(assert (str.in_re X (re.++ (str.to_re "Cookie:") (re.* re.allchar) (str.to_re "Host:") (re.* re.allchar) (str.to_re "ldap://\u{a}"))))
(check-sat)
