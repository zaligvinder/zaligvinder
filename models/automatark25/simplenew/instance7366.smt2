(declare-const X String)
; url=\swww\u{2E}alfacleaner\u{2E}com\d+Host\u{3A}\u{2F}products\u{2F}spyblocs\u{2F}
(assert (not (str.in_re X (re.++ (str.to_re "url=") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "www.alfacleaner.com") (re.+ (re.range "0" "9")) (str.to_re "Host:/products/spyblocs/\u{13}\u{a}")))))
(check-sat)
