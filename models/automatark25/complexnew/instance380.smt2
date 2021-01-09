(declare-const X String)
; Cookie\x3aAppName\x2FGRSI\|Server\|Host\x3Aorigin\x3Dsidefind
(assert (str.in.re X (str.to.re "Cookie:AppName/GRSI|Server|\x13Host:origin=sidefind\x0a")))
; ^[89][0-9]{9}
(assert (str.in.re X (re.++ (re.union (str.to.re "8") (str.to.re "9")) ((_ re.loop 9 9) (re.range "0" "9")) (str.to.re "\x0a"))))
; search\x2eimesh\x2ecom\s+WatchDogupwww\.klikvipsearch\.com
(assert (str.in.re X (re.++ (str.to.re "search.imesh.com") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "WatchDogupwww.klikvipsearch.com\x0a"))))
; Searchdata2\.activshopper\.comdll\x3FproductsCUSTOMSAccwww\x2Elocators\x2Ecom
(assert (str.in.re X (str.to.re "Searchdata2.activshopper.comdll?productsCUSTOMSAccwww.locators.com\x0a")))
(check-sat)
