(declare-const X String)
; www\.actualnames\.com.*www\.klikvipsearch\.com.*\u{3C}\u{2F}chat\u{3E}
(assert (str.in_re X (re.++ (str.to_re "www.actualnames.com") (re.* re.allchar) (str.to_re "www.klikvipsearch.com") (re.* re.allchar) (str.to_re "</chat>\u{a}"))))
; /^[^\s]*\u{D}\u{A}$/P
(assert (not (str.in_re X (re.++ (str.to_re "/") (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "\u{d}\u{a}/P\u{a}")))))
; ProAgentHost\u{3a}Host\u{3A}iOpuss_sq=aolsnssigninwininet
(assert (not (str.in_re X (str.to_re "ProAgentHost:Host:iOpuss_sq=aolsnssigninwininet\u{a}"))))
(check-sat)
