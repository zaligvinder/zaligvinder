(declare-const X String)
; Xtra\s+Host\u{3A}\s+Referer\u{3a}ThisSubject\u{3a}
(assert (not (str.in_re X (re.++ (str.to_re "Xtra") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Host:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Referer:ThisSubject:\u{a}")))))
; e2give\.comrichfind\u{2E}com\u{22}007User-Agent\u{3A}www\u{2E}searchreslt\u{2E}com
(assert (not (str.in_re X (str.to_re "e2give.comrichfind.com\u{22}007User-Agent:www.searchreslt.com\u{a}"))))
(check-sat)
