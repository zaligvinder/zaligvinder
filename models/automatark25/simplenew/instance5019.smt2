(declare-const X String)
; LOGLiveHost\x3ALOGHandyhttp\x3A\x2F\x2Fwww\.searchinweb\.com\x2Fsearch\.php\?said=bar
(assert (str.in.re X (str.to.re "LOGLiveHost:LOGHandyhttp://www.searchinweb.com/search.php?said=bar\x0a")))
(check-sat)
