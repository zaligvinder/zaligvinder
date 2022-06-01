(declare-const X String)
; AgentanswerHost\u{3A}tool\u{2E}world2\u{2E}cnTCwhenu\u{2E}com
(assert (str.in_re X (str.to_re "AgentanswerHost:tool.world2.cn\u{13}TCwhenu.com\u{13}\u{a}")))
(check-sat)
