(declare-const X String)
; ^(((\+{1})|(0{2}))98|(0{1}))9[1-9]{1}\d{8}\Z$
(assert (str.in.re X (re.++ (re.union (re.++ (re.union ((_ re.loop 1 1) (str.to.re "+")) ((_ re.loop 2 2) (str.to.re "0"))) (str.to.re "98")) ((_ re.loop 1 1) (str.to.re "0"))) (str.to.re "9") ((_ re.loop 1 1) (re.range "1" "9")) ((_ re.loop 8 8) (re.range "0" "9")) (str.to.re "\x0a"))))
; ad\x2Emokead\x2Ecom\d+Spy\d+ZOMBIES\x5fHTTP\x5fGETearch\x2Eearthlinkwww\x2Epurityscan\x2EcomUser-Agent\x3a
(assert (str.in.re X (re.++ (str.to.re "ad.mokead.com") (re.+ (re.range "0" "9")) (str.to.re "Spy") (re.+ (re.range "0" "9")) (str.to.re "ZOMBIES_HTTP_GETearch.earthlinkwww.purityscan.comUser-Agent:\x0a"))))
; /filename=[^\n]*\x2exslt/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".xslt/i\x0a")))))
; /filename=[^\n]*\x2evsd/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".vsd/i\x0a")))))
; \x2Ftoolbar\x2Fsupremetb\s+wjpropqmlpohj\x2flo\s+resultsmaster\x2Ecom
(assert (not (str.in.re X (re.++ (str.to.re "/toolbar/supremetb") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "wjpropqmlpohj/lo") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "resultsmaster.com\x13\x0a")))))
(check-sat)
