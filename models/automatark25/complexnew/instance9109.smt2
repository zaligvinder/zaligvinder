(declare-const X String)
; Toolbarwww\u{2E}onlinecasinoextra\u{2E}com
(assert (not (str.in_re X (str.to_re "Toolbarwww.onlinecasinoextra.com\u{a}"))))
; Host\u{3A}\s+Host\u{3A}\u{7c}roogoo\u{7c}Testiufilfwulmfi\u{2f}riuf\.lio
(assert (str.in_re X (re.++ (str.to_re "Host:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Host:|roogoo|Testiufilfwulmfi/riuf.lio\u{a}"))))
; Informationurl=Host\u{3A}action\u{2E}forhttp\u{3A}\u{2F}\u{2F}www\.searchinweb\.com\u{2F}search\.php\?said=bar
(assert (str.in_re X (str.to_re "Informationurl=Host:action.forhttp://www.searchinweb.com/search.php?said=bar\u{a}")))
(check-sat)
