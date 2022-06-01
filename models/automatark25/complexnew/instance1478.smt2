(declare-const X String)
; www\u{2E}richfind\u{2E}comHost\u{3A}
(assert (str.in_re X (str.to_re "www.richfind.comHost:\u{a}")))
; LOGLiveHost\u{3A}LOGHandyhttp\u{3A}\u{2F}\u{2F}www\.searchinweb\.com\u{2F}search\.php\?said=bar
(assert (not (str.in_re X (str.to_re "LOGLiveHost:LOGHandyhttp://www.searchinweb.com/search.php?said=bar\u{a}"))))
(check-sat)
