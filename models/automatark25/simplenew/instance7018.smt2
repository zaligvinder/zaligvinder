(declare-const X String)
; \u{7D}\u{7B}OS\u{3A}securityUser-Agent\u{3a}www\u{2E}sogou\u{2E}com
(assert (str.in_re X (str.to_re "}{OS:securityUser-Agent:www.sogou.com\u{a}")))
(check-sat)
