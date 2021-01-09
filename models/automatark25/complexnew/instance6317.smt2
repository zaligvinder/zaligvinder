(declare-const X String)
; MyPostsearch\x2econduit\x2ecomUser-Agent\x3AAcmeSubject\x3Aready\.\r\n
(assert (str.in.re X (str.to.re "MyPostsearch.conduit.comUser-Agent:AcmeSubject:ready.\x0d\x0a\x0a")))
; ([a-zA-Z]{2}[0-9]{1,2}\s{0,1}[0-9]{1,2}[a-zA-Z]{2})
(assert (str.in.re X (re.++ (str.to.re "\x0a") ((_ re.loop 2 2) (re.union (re.range "a" "z") (re.range "A" "Z"))) ((_ re.loop 1 2) (re.range "0" "9")) (re.opt (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) ((_ re.loop 1 2) (re.range "0" "9")) ((_ re.loop 2 2) (re.union (re.range "a" "z") (re.range "A" "Z"))))))
(check-sat)
