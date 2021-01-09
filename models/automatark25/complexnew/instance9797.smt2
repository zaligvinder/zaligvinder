(declare-const X String)
; Host\x3A\dMicrosoft\w+\+Version\+
(assert (str.in.re X (re.++ (str.to.re "Host:") (re.range "0" "9") (str.to.re "Microsoft") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "+Version+\x0a"))))
; MyPostsearch\x2econduit\x2ecomUser-Agent\x3AAcmeSubject\x3Aready\.\r\n
(assert (str.in.re X (str.to.re "MyPostsearch.conduit.comUser-Agent:AcmeSubject:ready.\x0d\x0a\x0a")))
; filename=\x22\dDA\s+www\x2Epeer2mail\x2Ecom
(assert (not (str.in.re X (re.++ (str.to.re "filename=\x22") (re.range "0" "9") (str.to.re "DA") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "www.peer2mail.com\x0a")))))
; smrtshpr-cs-.*TPSystem\s+dist\x2Eatlas\x2Dia\x2Ecom
(assert (not (str.in.re X (re.++ (str.to.re "smrtshpr-cs-\x13") (re.* re.allchar) (str.to.re "TPSystem") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "dist.atlas-ia.com\x0a")))))
(check-sat)
