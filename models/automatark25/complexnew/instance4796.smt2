(declare-const X String)
; ^(\d{1,4}?[.]{0,1}?\d{0,3}?)$
(assert (str.in.re X (re.++ (str.to.re "\x0a") ((_ re.loop 1 4) (re.range "0" "9")) (re.opt (str.to.re ".")) ((_ re.loop 0 3) (re.range "0" "9")))))
; CD\x2F\.ico\x2FsLogearch195\.225\.
(assert (not (str.in.re X (str.to.re "CD/.ico/sLogearch195.225.\x0a"))))
; ad\x2Emokead\x2Ecom\d+Spy\d+ZOMBIES\x5fHTTP\x5fGETearch\x2Eearthlinkwww\x2Epurityscan\x2EcomUser-Agent\x3a
(assert (str.in.re X (re.++ (str.to.re "ad.mokead.com") (re.+ (re.range "0" "9")) (str.to.re "Spy") (re.+ (re.range "0" "9")) (str.to.re "ZOMBIES_HTTP_GETearch.earthlinkwww.purityscan.comUser-Agent:\x0a"))))
; ^213\.61\.220\.(25[0-5]|2[0-4][0-9]|1[0-9]{2}|[1-9][0-9]|[0-9])$
(assert (str.in.re X (re.++ (str.to.re "213.61.220.") (re.union (re.++ (str.to.re "25") (re.range "0" "5")) (re.++ (str.to.re "2") (re.range "0" "4") (re.range "0" "9")) (re.++ (str.to.re "1") ((_ re.loop 2 2) (re.range "0" "9"))) (re.++ (re.range "1" "9") (re.range "0" "9")) (re.range "0" "9")) (str.to.re "\x0a"))))
(check-sat)
