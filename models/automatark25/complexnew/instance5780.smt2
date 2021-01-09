(declare-const X String)
; /^\/[a-f0-9]{32}\/\d{10}\/[a-f0-9]{32}\.jar$/Ui
(assert (not (str.in.re X (re.++ (str.to.re "//") ((_ re.loop 32 32) (re.union (re.range "a" "f") (re.range "0" "9"))) (str.to.re "/") ((_ re.loop 10 10) (re.range "0" "9")) (str.to.re "/") ((_ re.loop 32 32) (re.union (re.range "a" "f") (re.range "0" "9"))) (str.to.re ".jar/Ui\x0a")))))
; ^[+-]? *100(\.0{0,2})? *%?$|^[+-]? *\d{1,2}(\.\d{1,2})? *%?$
(assert (str.in.re X (re.union (re.++ (re.opt (re.union (str.to.re "+") (str.to.re "-"))) (re.* (str.to.re " ")) (str.to.re "100") (re.opt (re.++ (str.to.re ".") ((_ re.loop 0 2) (str.to.re "0")))) (re.* (str.to.re " ")) (re.opt (str.to.re "%"))) (re.++ (re.opt (re.union (str.to.re "+") (str.to.re "-"))) (re.* (str.to.re " ")) ((_ re.loop 1 2) (re.range "0" "9")) (re.opt (re.++ (str.to.re ".") ((_ re.loop 1 2) (re.range "0" "9")))) (re.* (str.to.re " ")) (re.opt (str.to.re "%")) (str.to.re "\x0a")))))
; ad\x2Emokead\x2Ecom\d+Spy\d+ZOMBIES\x5fHTTP\x5fGETearch\x2Eearthlinkwww\x2Epurityscan\x2EcomUser-Agent\x3a
(assert (not (str.in.re X (re.++ (str.to.re "ad.mokead.com") (re.+ (re.range "0" "9")) (str.to.re "Spy") (re.+ (re.range "0" "9")) (str.to.re "ZOMBIES_HTTP_GETearch.earthlinkwww.purityscan.comUser-Agent:\x0a")))))
; ^1?[-\. ]?(\(\d{3}\)?[-\. ]?|\d{3}?[-\. ]?)?\d{3}?[-\. ]?\d{4}$
(assert (not (str.in.re X (re.++ (re.opt (str.to.re "1")) (re.opt (re.union (str.to.re "-") (str.to.re ".") (str.to.re " "))) (re.opt (re.union (re.++ (str.to.re "(") ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (str.to.re ")")) (re.opt (re.union (str.to.re "-") (str.to.re ".") (str.to.re " ")))) (re.++ ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (re.union (str.to.re "-") (str.to.re ".") (str.to.re " ")))))) ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (re.union (str.to.re "-") (str.to.re ".") (str.to.re " "))) ((_ re.loop 4 4) (re.range "0" "9")) (str.to.re "\x0a")))))
; ^((\d{8})|(\d{10})|(\d{11})|(\d{6}-\d{5}))?$
(assert (not (str.in.re X (re.++ (re.opt (re.union ((_ re.loop 8 8) (re.range "0" "9")) ((_ re.loop 10 10) (re.range "0" "9")) ((_ re.loop 11 11) (re.range "0" "9")) (re.++ ((_ re.loop 6 6) (re.range "0" "9")) (str.to.re "-") ((_ re.loop 5 5) (re.range "0" "9"))))) (str.to.re "\x0a")))))
(check-sat)
