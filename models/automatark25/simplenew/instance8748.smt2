(declare-const X String)
; www\u{2E}sogou\u{2E}comUser-Agent\u{3A}
(assert (not (str.in_re X (str.to_re "www.sogou.comUser-Agent:\u{a}"))))
(check-sat)
