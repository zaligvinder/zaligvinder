(declare-const X String)
; A + B
(assert (not (str.in_re X (re.++ (str.to_re "A") (re.+ (str.to_re " ")) (str.to_re " B\u{a}")))))
; report\<\u{2F}title\>Referer\u{3A}aresflashdownloader\u{2E}comHost\u{3A}DeathpioletLOGtowww\u{2E}searchexpert\u{2E}com
(assert (str.in_re X (str.to_re "report</title>Referer:aresflashdownloader.comHost:DeathpioletLOGtowww.searchexpert.com\u{a}")))
(check-sat)
