(declare-const X String)
; action\u{2E}pioletHost\u{3A}IP-www\u{2E}internetadvertisingcompany\u{2E}biz
(assert (not (str.in_re X (str.to_re "action.pioletHost:IP-www.internetadvertisingcompany.biz\u{a}"))))
(check-sat)
