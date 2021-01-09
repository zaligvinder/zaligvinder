(declare-const X String)
; SpyBuddyZOMBIES\x5fHTTP\x5fGETearch\x2Eearthlink
(assert (not (str.in.re X (str.to.re "SpyBuddyZOMBIES_HTTP_GETearch.earthlink\x0a"))))
(check-sat)
