(declare-const X String)
; MyPostsearch\u{2e}conduit\u{2e}comUser-Agent\u{3A}AcmeSubject\u{3A}ready\.\r\n
(assert (str.in_re X (str.to_re "MyPostsearch.conduit.comUser-Agent:AcmeSubject:ready.\u{d}\u{a}\u{a}")))
(check-sat)
