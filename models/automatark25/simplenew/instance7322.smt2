(declare-const X String)
; User-Agent\u{3A}register\.aspUser-Agent\u{3A}Host\u{3A}cdpView
(assert (not (str.in_re X (str.to_re "User-Agent:register.aspUser-Agent:Host:cdpView\u{a}"))))
(check-sat)
