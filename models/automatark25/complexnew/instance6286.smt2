(declare-const X String)
; ^[^iIoOqQ'-]{10,17}$
(assert (str.in.re X (re.++ ((_ re.loop 10 17) (re.union (str.to.re "i") (str.to.re "I") (str.to.re "o") (str.to.re "O") (str.to.re "q") (str.to.re "Q") (str.to.re "'") (str.to.re "-"))) (str.to.re "\x0a"))))
; SpyBuddy\sPARSER.*Host\x3Aaction\x2Eforhttp\x3A\x2F\x2Fwww\.searchinweb\.com\x2Fsearch\.php\?said=bar
(assert (str.in.re X (re.++ (str.to.re "SpyBuddy") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "PARSER") (re.* re.allchar) (str.to.re "Host:action.forhttp://www.searchinweb.com/search.php?said=bar\x0a"))))
(check-sat)
