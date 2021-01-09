(declare-const X String)
; dialupvpn\x5fpwd\d\<title\>Actual\sSpywareStrike\s+fowclxccdxn\x2fuxwn\.ddywww\x2evirusprotectpro\x2ecom
(assert (not (str.in.re X (re.++ (str.to.re "dialupvpn_pwd") (re.range "0" "9") (str.to.re "<title>Actual") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "SpywareStrike") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "fowclxccdxn/uxwn.ddywww.virusprotectpro.com\x0a")))))
(check-sat)
