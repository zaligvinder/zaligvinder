(declare-const X String)
; gpstool\x2eglobaladserver\x2ecomfriend_nickname=CIA-Notify-Tezt
(assert (not (str.in.re X (str.to.re "gpstool.globaladserver.comfriend_nickname=CIA-Notify-Tezt\x0a"))))
; Host\x3A\d+Black\s+daosearch\x2EcomMyPostwww\.raxsearch\.com
(assert (not (str.in.re X (re.++ (str.to.re "Host:") (re.+ (re.range "0" "9")) (str.to.re "Black") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "daosearch.comMyPostwww.raxsearch.com\x0a")))))
; Client.*Peer\s+ThistoIpHost\x3Abadurl\x2Egrandstreetinteractive\x2Ecom
(assert (str.in.re X (re.++ (str.to.re "Client") (re.* re.allchar) (str.to.re "Peer") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "ThistoIpHost:badurl.grandstreetinteractive.com\x0a"))))
; DmInf\x5E\s+offers\x2Ebullseye-network\x2Ecomlogfile
(assert (not (str.in.re X (re.++ (str.to.re "DmInf^") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "offers.bullseye-network.comlogfile\x0a")))))
(check-sat)
