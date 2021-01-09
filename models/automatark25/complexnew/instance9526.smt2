(declare-const X String)
; search\x2econduit\x2ecom\sPARSER.*
(assert (str.in.re X (re.++ (str.to.re "search.conduit.com") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "PARSER") (re.* re.allchar) (str.to.re "\x0a"))))
; www\x2Esogou\x2Ecomix=WebsiteHost\x3aWeb-Mail
(assert (str.in.re X (str.to.re "www.sogou.comix=WebsiteHost:Web-Mail\x0a")))
; (\w(\s)?)+
(assert (str.in.re X (re.++ (re.+ (re.++ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_")) (re.opt (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))))) (str.to.re "\x0a"))))
(check-sat)
