(declare-const X String)
; www\u{2E}makemesearch\u{2E}comLOGOnevclxatmlhavj\u{2f}vsy
(assert (not (str.in_re X (str.to_re "www.makemesearch.comLOGOnevclxatmlhavj/vsy\u{a}"))))
(check-sat)
