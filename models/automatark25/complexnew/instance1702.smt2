(declare-const X String)
; cdpViewWatcher\u{2F}cgi\u{2F}logurl\.cgiwww\u{2E}bydou\u{2E}com
(assert (not (str.in_re X (str.to_re "cdpViewWatcher/cgi/logurl.cgiwww.bydou.com\u{a}"))))
; offers\u{2E}bullseye-network\u{2E}com[^\n\r]*this\dwww\u{2E}trustedsearch\u{2E}com
(assert (str.in_re X (re.++ (str.to_re "offers.bullseye-network.com") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "this") (re.range "0" "9") (str.to_re "www.trustedsearch.com\u{a}"))))
; that.*CodeguruBrowser.*CasinoBladeisInsideupdate\.cgiHost\u{3A}
(assert (not (str.in_re X (re.++ (str.to_re "that") (re.* re.allchar) (str.to_re "CodeguruBrowser") (re.* re.allchar) (str.to_re "CasinoBladeisInsideupdate.cgiHost:\u{a}")))))
; TOOLBAR\s+dist\u{2E}atlas\u{2D}ia\u{2E}com
(assert (not (str.in_re X (re.++ (str.to_re "TOOLBAR") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "dist.atlas-ia.com\u{a}")))))
(check-sat)
