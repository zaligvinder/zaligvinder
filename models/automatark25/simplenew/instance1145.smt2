(declare-const X String)
; Host\u{3A}\s+www\u{2E}yoogee\u{2E}com
(assert (str.in_re X (re.++ (str.to_re "Host:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "www.yoogee.com\u{13}\u{a}"))))
(check-sat)
