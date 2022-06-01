(declare-const X String)
; www\u{2E}ezula\u{2E}com.*com[^\n\r]*SpyBuddy
(assert (not (str.in_re X (re.++ (str.to_re "www.ezula.com") (re.* re.allchar) (str.to_re "com") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "SpyBuddy\u{a}")))))
; Host\u{3A}\s+\u{2A}PORT3\u{2A}\[DRIVEwww\.raxsearch\.comSubject\u{3a}Host\u{3a}
(assert (not (str.in_re X (re.++ (str.to_re "Host:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "*PORT3*[DRIVEwww.raxsearch.comSubject:Host:\u{a}")))))
; MyPostsearch\u{2e}conduit\u{2e}comUser-Agent\u{3A}AcmeSubject\u{3A}ready\.\r\n
(assert (not (str.in_re X (str.to_re "MyPostsearch.conduit.comUser-Agent:AcmeSubject:ready.\u{d}\u{a}\u{a}"))))
(check-sat)
