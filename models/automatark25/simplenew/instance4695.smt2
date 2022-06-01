(declare-const X String)
; www\u{2E}myarmory\u{2E}comHost\u{3a}Host\u{3a}messagessearch\u{2e}imesh\u{2e}com
(assert (not (str.in_re X (str.to_re "www.myarmory.comHost:Host:messagessearch.imesh.com\u{a}"))))
(check-sat)
