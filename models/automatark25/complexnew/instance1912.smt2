(declare-const X String)
; ookflolfctm\u{2f}nmot\.fmu
(assert (str.in_re X (str.to_re "ookflolfctm/nmot.fmu\u{a}")))
; User-Agent\u{3A}\w+Minutes\sHost\u{3A}www\u{2E}eblocs\u{2E}comHost\u{3A}RunnerHost\u{3a}\u{2E}html
(assert (str.in_re X (re.++ (str.to_re "User-Agent:") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "Minutes") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "Host:www.eblocs.com\u{1b}Host:RunnerHost:.html\u{a}"))))
; From\u{3A}.*Host\u{3A}\s+Downloadfowclxccdxn\u{2f}uxwn\.ddy
(assert (str.in_re X (re.++ (str.to_re "From:") (re.* re.allchar) (str.to_re "Host:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Downloadfowclxccdxn/uxwn.ddy\u{a}"))))
(check-sat)
