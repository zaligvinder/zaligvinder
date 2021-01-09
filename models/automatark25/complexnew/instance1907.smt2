(declare-const X String)
; (^0[87][23467]((\d{7})|( |-)((\d{3}))( |-)(\d{4})|( |-)(\d{7})))
(assert (not (str.in.re X (re.++ (str.to.re "\x0a0") (re.union (str.to.re "8") (str.to.re "7")) (re.union (str.to.re "2") (str.to.re "3") (str.to.re "4") (str.to.re "6") (str.to.re "7")) (re.union ((_ re.loop 7 7) (re.range "0" "9")) (re.++ (re.union (str.to.re " ") (str.to.re "-")) ((_ re.loop 3 3) (re.range "0" "9")) (re.union (str.to.re " ") (str.to.re "-")) ((_ re.loop 4 4) (re.range "0" "9"))) (re.++ (re.union (str.to.re " ") (str.to.re "-")) ((_ re.loop 7 7) (re.range "0" "9"))))))))
; loomcompany\x2EcomBasedURLS\swww\.fast-finder\.com
(assert (str.in.re X (re.++ (str.to.re "loomcompany.comBasedURLS") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "www.fast-finder.com\x0a"))))
; dll\x3Fbadurl\x2Egrandstreetinteractive\x2Ecom
(assert (str.in.re X (str.to.re "dll?badurl.grandstreetinteractive.com\x0a")))
; zmnjgmomgbdz\x2fzzmw\.gztwww3\.addfreestats\.comKeylogger
(assert (not (str.in.re X (str.to.re "zmnjgmomgbdz/zzmw.gztwww3.addfreestats.comKeylogger\x0a"))))
; /^SSID=[a-zA-Z\d]{43}\x3B\x20A=[0-3]$/C
(assert (str.in.re X (re.++ (str.to.re "/SSID=") ((_ re.loop 43 43) (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9"))) (str.to.re "; A=") (re.range "0" "3") (str.to.re "/C\x0a"))))
(check-sat)
