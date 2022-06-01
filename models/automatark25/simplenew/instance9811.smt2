(declare-const X String)
; IP\s+\.hta.*Theef2trustyfiles\u{2E}comlogs
(assert (not (str.in_re X (re.++ (str.to_re "IP") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re ".hta") (re.* re.allchar) (str.to_re "Theef2trustyfiles.comlogs\u{a}")))))
(check-sat)
