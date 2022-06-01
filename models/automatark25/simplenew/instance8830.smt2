(declare-const X String)
; \u{28}robert\u{40}blackcastlesoft\u{2E}com\u{29}
(assert (str.in_re X (str.to_re "(robert@blackcastlesoft.com)\u{a}")))
(check-sat)
