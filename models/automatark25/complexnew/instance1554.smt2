(declare-const X String)
; snprtz\u{7C}dialnoref\u{3D}\u{25}user\u{5F}idPG=SPEEDBAR
(assert (str.in_re X (str.to_re "snprtz|dialnoref=%user_idPG=SPEEDBAR\u{a}")))
; \u{18}\u{16}\dsearch\u{2e}conduit\u{2e}com\u{3C}logs\u{40}logs\u{2E}com\u{3E}
(assert (not (str.in_re X (re.++ (str.to_re "\u{18}\u{16}") (re.range "0" "9") (str.to_re "search.conduit.com<logs@logs.com>\u{a}")))))
(check-sat)
