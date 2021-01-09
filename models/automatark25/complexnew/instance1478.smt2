(declare-const X String)
; www\x2Erichfind\x2EcomHost\x3A
(assert (str.in.re X (str.to.re "www.richfind.comHost:\x0a")))
; LOGLiveHost\x3ALOGHandyhttp\x3A\x2F\x2Fwww\.searchinweb\.com\x2Fsearch\.php\?said=bar
(assert (not (str.in.re X (str.to.re "LOGLiveHost:LOGHandyhttp://www.searchinweb.com/search.php?said=bar\x0a"))))
(check-sat)
