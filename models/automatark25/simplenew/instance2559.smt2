(declare-const X String)
; MyPostsearch\x2econduit\x2ecomUser-Agent\x3AAcmeSubject\x3Aready\.\r\n
(assert (not (str.in.re X (str.to.re "MyPostsearch.conduit.comUser-Agent:AcmeSubject:ready.\x0d\x0a\x0a"))))
(check-sat)
