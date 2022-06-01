(declare-const X String)
; Host\u{3A}00000www\u{2E}zhongsou\u{2E}com
(assert (str.in_re X (str.to_re "Host:00000www.zhongsou.com\u{a}")))
(check-sat)
