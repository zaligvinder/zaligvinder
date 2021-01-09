(declare-const X String)
; toetbuviaebe\x2feqv\.bvvuplink\x2Eco\x2Ekrwv=Host\x3A
(assert (str.in.re X (str.to.re "toetbuviaebe/eqv.bvvuplink.co.krwv=Host:\x0a")))
; download\x2Eeblocs\x2EcomHost\x3AReferer\x3A
(assert (str.in.re X (str.to.re "download.eblocs.comHost:Referer:\x0a")))
(check-sat)
