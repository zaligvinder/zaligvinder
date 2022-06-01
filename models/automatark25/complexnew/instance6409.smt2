(declare-const X String)
; trackwww\u{2E}alfacleaner\u{2E}com
(assert (str.in_re X (str.to_re "trackwww.alfacleaner.com\u{a}")))
; vvvjkhmbgnbbw\u{2f}qbn\u{28}robert\u{40}blackcastlesoft\u{2E}com\u{29}
(assert (str.in_re X (str.to_re "vvvjkhmbgnbbw/qbn\u{1b}(robert@blackcastlesoft.com)\u{a}")))
(check-sat)
