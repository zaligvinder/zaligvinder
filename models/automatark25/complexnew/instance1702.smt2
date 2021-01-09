(declare-const X String)
; cdpViewWatcher\x2Fcgi\x2Flogurl\.cgiwww\x2Ebydou\x2Ecom
(assert (not (str.in.re X (str.to.re "cdpViewWatcher/cgi/logurl.cgiwww.bydou.com\x0a"))))
; offers\x2Ebullseye-network\x2Ecom[^\n\r]*this\dwww\x2Etrustedsearch\x2Ecom
(assert (str.in.re X (re.++ (str.to.re "offers.bullseye-network.com") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "this") (re.range "0" "9") (str.to.re "www.trustedsearch.com\x0a"))))
; that.*CodeguruBrowser.*CasinoBladeisInsideupdate\.cgiHost\x3A
(assert (not (str.in.re X (re.++ (str.to.re "that") (re.* re.allchar) (str.to.re "CodeguruBrowser") (re.* re.allchar) (str.to.re "CasinoBladeisInsideupdate.cgiHost:\x0a")))))
; TOOLBAR\s+dist\x2Eatlas\x2Dia\x2Ecom
(assert (not (str.in.re X (re.++ (str.to.re "TOOLBAR") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "dist.atlas-ia.com\x0a")))))
(check-sat)
