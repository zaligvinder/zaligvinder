(declare-const X String)
; www\u{2E}zhongsou\u{2E}comclick\u{2E}dotcomtoolbar\u{2E}com
(assert (str.in_re X (str.to_re "www.zhongsou.comclick.dotcomtoolbar.com\u{a}")))
(check-sat)
