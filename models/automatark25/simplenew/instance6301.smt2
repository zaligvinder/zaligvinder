(declare-const X String)
; e2give\.comrichfind\u{2E}com\u{22}007User-Agent\u{3A}www\u{2E}searchreslt\u{2E}com
(assert (not (str.in_re X (str.to_re "e2give.comrichfind.com\u{22}007User-Agent:www.searchreslt.com\u{a}"))))
(check-sat)
