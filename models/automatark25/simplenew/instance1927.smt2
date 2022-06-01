(declare-const X String)
; www\u{2E}zhongsou\u{2E}com\sisHost\u{3A}are
(assert (str.in_re X (re.++ (str.to_re "www.zhongsou.com") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "isHost:are\u{a}"))))
(check-sat)
