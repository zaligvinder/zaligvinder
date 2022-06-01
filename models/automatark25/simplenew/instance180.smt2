(declare-const X String)
; SpyBuddyZOMBIES\u{5f}HTTP\u{5f}GETearch\u{2E}earthlink
(assert (not (str.in_re X (str.to_re "SpyBuddyZOMBIES_HTTP_GETearch.earthlink\u{a}"))))
(check-sat)
