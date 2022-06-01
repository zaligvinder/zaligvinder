(declare-const X String)
; /\u{0}hide hide\u{22}\u{9}\u{22}([a-z0-9\u{5c}\u{2e}\u{3a}]+\u{2e}exe|sh)/
(assert (str.in_re X (re.++ (str.to_re "/\u{0}hide hide\u{22}\u{9}\u{22}") (re.union (re.++ (re.+ (re.union (re.range "a" "z") (re.range "0" "9") (str.to_re "\u{5c}") (str.to_re ".") (str.to_re ":"))) (str.to_re ".exe")) (str.to_re "sh")) (str.to_re "/\u{a}"))))
(check-sat)
