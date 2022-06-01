(declare-const X String)
; /User-Agent\u{3a}[^\u{d}\u{a}]*Java\/1\./H
(assert (str.in_re X (re.++ (str.to_re "/User-Agent:") (re.* (re.union (str.to_re "\u{d}") (str.to_re "\u{a}"))) (str.to_re "Java/1./H\u{a}"))))
; SpyBuddyZOMBIES\u{5f}HTTP\u{5f}GETearch\u{2E}earthlink
(assert (str.in_re X (str.to_re "SpyBuddyZOMBIES_HTTP_GETearch.earthlink\u{a}")))
(check-sat)
