(declare-const X String)
; config\u{2E}180solutions\u{2E}com\dStable\s+Host\u{3a}\u{7D}\u{7C}
(assert (not (str.in_re X (re.++ (str.to_re "config.180solutions.com") (re.range "0" "9") (str.to_re "Stable") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Host:}|\u{a}")))))
(check-sat)
