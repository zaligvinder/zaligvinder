(declare-const X String)
; /\/stat_svc\/$/U
(assert (str.in_re X (str.to_re "//stat_svc//U\u{a}")))
; Host\u{3A}\s+www\u{2E}internet-optimizer\u{2E}comToolBarKeylogger
(assert (not (str.in_re X (re.++ (str.to_re "Host:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "www.internet-optimizer.comToolBarKeylogger\u{a}")))))
(check-sat)
