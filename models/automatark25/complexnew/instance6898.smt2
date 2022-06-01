(declare-const X String)
; Serverwjpropqmlpohj\u{2f}loHost\u{3A}KEY=
(assert (not (str.in_re X (str.to_re "Serverwjpropqmlpohj/loHost:KEY=\u{a}"))))
; [\t ]+
(assert (str.in_re X (re.++ (re.+ (re.union (str.to_re "\u{9}") (str.to_re " "))) (str.to_re "\u{a}"))))
; report\<\u{2F}title\>Referer\u{3A}aresflashdownloader\u{2E}comHost\u{3A}DeathpioletLOGtowww\u{2E}searchexpert\u{2E}com
(assert (not (str.in_re X (str.to_re "report</title>Referer:aresflashdownloader.comHost:DeathpioletLOGtowww.searchexpert.com\u{a}"))))
(check-sat)
