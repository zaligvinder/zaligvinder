(declare-const X String)
; HWAEUser-Agent\u{3A}TestHost\u{3A}www\u{2E}dotcomtoolbar\u{2E}com
(assert (str.in_re X (str.to_re "HWAEUser-Agent:TestHost:www.dotcomtoolbar.com\u{a}")))
; \u{D}\u{A}\u{D}\u{A}Attached.*Host\u{3A}\s+ZC-Bridge
(assert (not (str.in_re X (re.++ (str.to_re "\u{d}\u{a}\u{d}\u{a}Attached") (re.* re.allchar) (str.to_re "Host:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "ZC-Bridge\u{a}")))))
; YAHOO.*Host\u{3A}.*\u{2F}cs\u{2F}pop4\u{2F}
(assert (not (str.in_re X (re.++ (str.to_re "YAHOO") (re.* re.allchar) (str.to_re "Host:") (re.* re.allchar) (str.to_re "/cs/pop4/\u{a}")))))
(check-sat)
