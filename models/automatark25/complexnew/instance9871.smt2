(declare-const X String)
; www\x2Eezula\x2Ecom.*com[^\n\r]*SpyBuddy
(assert (not (str.in.re X (re.++ (str.to.re "www.ezula.com") (re.* re.allchar) (str.to.re "com") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "SpyBuddy\x0a")))))
; Host\x3A\s+\x2APORT3\x2A\[DRIVEwww\.raxsearch\.comSubject\x3aHost\x3a
(assert (not (str.in.re X (re.++ (str.to.re "Host:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "*PORT3*[DRIVEwww.raxsearch.comSubject:Host:\x0a")))))
; MyPostsearch\x2econduit\x2ecomUser-Agent\x3AAcmeSubject\x3Aready\.\r\n
(assert (not (str.in.re X (str.to.re "MyPostsearch.conduit.comUser-Agent:AcmeSubject:ready.\x0d\x0a\x0a"))))
(check-sat)
