(declare-const X String)
; ^[^iIoOqQ'-]{10,17}$
(assert (str.in_re X (re.++ ((_ re.loop 10 17) (re.union (str.to_re "i") (str.to_re "I") (str.to_re "o") (str.to_re "O") (str.to_re "q") (str.to_re "Q") (str.to_re "'") (str.to_re "-"))) (str.to_re "\u{a}"))))
; SpyBuddy\sPARSER.*Host\u{3A}action\u{2E}forhttp\u{3A}\u{2F}\u{2F}www\.searchinweb\.com\u{2F}search\.php\?said=bar
(assert (str.in_re X (re.++ (str.to_re "SpyBuddy") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "PARSER") (re.* re.allchar) (str.to_re "Host:action.forhttp://www.searchinweb.com/search.php?said=bar\u{a}"))))
(check-sat)
