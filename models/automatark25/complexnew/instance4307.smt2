(declare-const X String)
; www\u{2E}ricercadoppia\u{2E}com[^\n\r]*xml\s+User-Agent\u{3A}
(assert (not (str.in_re X (re.++ (str.to_re "www.ricercadoppia.com") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "xml") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "User-Agent:\u{a}")))))
; User-Agent\u{3A}register\.aspUser-Agent\u{3A}Host\u{3A}cdpView
(assert (str.in_re X (str.to_re "User-Agent:register.aspUser-Agent:Host:cdpView\u{a}")))
; e2give\.comrichfind\u{2E}com\u{22}007User-Agent\u{3A}www\u{2E}searchreslt\u{2E}com
(assert (not (str.in_re X (str.to_re "e2give.comrichfind.com\u{22}007User-Agent:www.searchreslt.com\u{a}"))))
(check-sat)
