(declare-const X String)
; \.icosearch\u{2e}conduit\u{2e}com\u{3C}logs\u{40}logs\u{2E}com\u{3E}
(assert (str.in_re X (str.to_re ".icosearch.conduit.com<logs@logs.com>\u{a}")))
(check-sat)
