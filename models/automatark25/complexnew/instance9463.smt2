(declare-const X String)
; mywayHost\x3Awww\x2Eeblocs\x2Ecom
(assert (not (str.in.re X (str.to.re "mywayHost:www.eblocs.com\x1b\x0a"))))
; e2give\.comConnectionSpywww\x2Eslinkyslate
(assert (not (str.in.re X (str.to.re "e2give.comConnectionSpywww.slinkyslate\x0a"))))
; dialupvpn\x5fpwd\d\<title\>Actual\sSpywareStrike\s+fowclxccdxn\x2fuxwn\.ddywww\x2evirusprotectpro\x2ecom
(assert (str.in.re X (re.++ (str.to.re "dialupvpn_pwd") (re.range "0" "9") (str.to.re "<title>Actual") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "SpywareStrike") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "fowclxccdxn/uxwn.ddywww.virusprotectpro.com\x0a"))))
; Subject\x3AKeyloggerSAHHost\x3ASurveillancenotification\x2Fdownload\x2Ftoolbar\x2Flocatorstoolbar
(assert (not (str.in.re X (str.to.re "Subject:KeyloggerSAHHost:Surveillance\x13notification\x13/download/toolbar/locatorstoolbar\x0a"))))
; /\/software\x2ephp\x3f[0-9]{15,}/Ui
(assert (str.in.re X (re.++ (str.to.re "//software.php?/Ui\x0a") ((_ re.loop 15 15) (re.range "0" "9")) (re.* (re.range "0" "9")))))
(check-sat)
