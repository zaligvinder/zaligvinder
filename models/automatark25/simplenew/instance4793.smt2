(declare-const X String)
; User-Agent\u{3A}\w+Minutes\sHost\u{3A}www\u{2E}eblocs\u{2E}comHost\u{3A}RunnerHost\u{3a}\u{2E}html
(assert (not (str.in_re X (re.++ (str.to_re "User-Agent:") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "Minutes") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "Host:www.eblocs.com\u{1b}Host:RunnerHost:.html\u{a}")))))
(check-sat)
