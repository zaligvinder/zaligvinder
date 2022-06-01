(declare-const X String)
; [\u{0}-\u{1F}\u{7F}]
(assert (not (str.in_re X (re.++ (re.union (re.range "\u{0}" "\u{1f}") (str.to_re "\u{7f}")) (str.to_re "\u{a}")))))
; User-Agent\u{3A}\s+www\u{2E}myarmory\u{2E}com
(assert (not (str.in_re X (re.++ (str.to_re "User-Agent:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "www.myarmory.com\u{a}")))))
(check-sat)
