(declare-const X String)
; \u{18}\u{16}\dsearch\u{2e}conduit\u{2e}com\u{3C}logs\u{40}logs\u{2E}com\u{3E}
(assert (not (str.in_re X (re.++ (str.to_re "\u{18}\u{16}") (re.range "0" "9") (str.to_re "search.conduit.com<logs@logs.com>\u{a}")))))
(check-sat)
