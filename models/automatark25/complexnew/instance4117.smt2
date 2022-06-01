(declare-const X String)
; www\u{2E}myarmory\u{2E}comHost\u{3a}Host\u{3a}messagessearch\u{2e}imesh\u{2e}com
(assert (str.in_re X (str.to_re "www.myarmory.comHost:Host:messagessearch.imesh.com\u{a}")))
; ActMonHost\u{3A}BossUser-Agent\u{3A}
(assert (str.in_re X (str.to_re "ActMonHost:BossUser-Agent:\u{a}")))
(check-sat)
