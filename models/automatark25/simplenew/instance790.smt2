(declare-const X String)
; Informationurl=Host\u{3A}action\u{2E}forhttp\u{3A}\u{2F}\u{2F}www\.searchinweb\.com\u{2F}search\.php\?said=bar
(assert (not (str.in_re X (str.to_re "Informationurl=Host:action.forhttp://www.searchinweb.com/search.php?said=bar\u{a}"))))
(check-sat)
