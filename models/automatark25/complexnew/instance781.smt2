(declare-const X String)
; requested\s+Reports\s+HostHost\u{3a}Host\u{3A}Host\u{3A}MyWebSearchSearchAssistant
(assert (not (str.in_re X (re.++ (str.to_re "requested") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Reports") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "HostHost:Host:Host:MyWebSearchSearchAssistant\u{a}")))))
; /Referer\u{3a}\u{20}[\u{20}-\u{7E}]*?\/wp\u{2d}admin\/[a-z\d\u{2d}]+?\.php\r\n/Hi
(assert (not (str.in_re X (re.++ (str.to_re "/Referer: ") (re.* (re.range " " "~")) (str.to_re "/wp-admin/") (re.+ (re.union (re.range "a" "z") (re.range "0" "9") (str.to_re "-"))) (str.to_re ".php\u{d}\u{a}/Hi\u{a}")))))
(check-sat)
