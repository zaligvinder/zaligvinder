(declare-const X String)
; \u{2F}images\u{2F}nocache\u{2F}tr\u{2F}gca\u{2F}m\.gif\?
(assert (not (str.in_re X (str.to_re "/images/nocache/tr/gca/m.gif?\u{a}"))))
; www\u{2E}myarmory\u{2E}comHost\u{3a}Host\u{3a}messagessearch\u{2e}imesh\u{2e}com
(assert (not (str.in_re X (str.to_re "www.myarmory.comHost:Host:messagessearch.imesh.com\u{a}"))))
(check-sat)
