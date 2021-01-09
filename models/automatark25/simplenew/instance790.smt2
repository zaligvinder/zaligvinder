(declare-const X String)
; Informationurl=Host\x3Aaction\x2Eforhttp\x3A\x2F\x2Fwww\.searchinweb\.com\x2Fsearch\.php\?said=bar
(assert (not (str.in.re X (str.to.re "Informationurl=Host:action.forhttp://www.searchinweb.com/search.php?said=bar\x0a"))))
(check-sat)
