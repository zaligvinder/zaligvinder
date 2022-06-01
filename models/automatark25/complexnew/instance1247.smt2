(declare-const X String)
; User-Agent\u{3A}[^\n\r]*HTTP_RAT_
(assert (str.in_re X (re.++ (str.to_re "User-Agent:") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "HTTP_RAT_\u{a}"))))
; Subject\u{3A}linkautomatici\u{2E}comReferer\u{3A}www\u{2E}searchreslt\u{2E}com
(assert (str.in_re X (str.to_re "Subject:linkautomatici.comReferer:www.searchreslt.com\u{a}")))
; deskwizz\u{2E}comReportsadblock\u{2E}linkz\u{2E}comUser-Agent\u{3A}
(assert (not (str.in_re X (str.to_re "deskwizz.comReportsadblock.linkz.comUser-Agent:\u{a}"))))
; /*d(9,15)
(assert (not (str.in_re X (re.++ (re.* (str.to_re "/")) (str.to_re "d9,15\u{a}")))))
(check-sat)
