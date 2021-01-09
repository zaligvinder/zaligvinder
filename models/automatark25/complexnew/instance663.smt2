(declare-const X String)
; /^\x3cmeta\x20name\x3d\x22token\x22\x20content\x3d\x22\xa4[A-F\d]{168}\xa4\x22\x2f\x3e$/
(assert (str.in.re X (re.++ (str.to.re "/<meta name=\x22token\x22 content=\x22\xa4") ((_ re.loop 168 168) (re.union (re.range "A" "F") (re.range "0" "9"))) (str.to.re "\xa4\x22/>/\x0a"))))
; Host\x3A\d+zmnjgmomgbdz\x2fzzmw\.gzt%3ftoolbar\x2Ei-lookup\x2Ecom
(assert (not (str.in.re X (re.++ (str.to.re "Host:") (re.+ (re.range "0" "9")) (str.to.re "zmnjgmomgbdz/zzmw.gzt%3ftoolbar.i-lookup.com\x0a")))))
; ad\x2Emokead\x2Ecom\d+Spy\d+ZOMBIES\x5fHTTP\x5fGETearch\x2Eearthlinkwww\x2Epurityscan\x2EcomUser-Agent\x3a
(assert (not (str.in.re X (re.++ (str.to.re "ad.mokead.com") (re.+ (re.range "0" "9")) (str.to.re "Spy") (re.+ (re.range "0" "9")) (str.to.re "ZOMBIES_HTTP_GETearch.earthlinkwww.purityscan.comUser-Agent:\x0a")))))
(check-sat)
