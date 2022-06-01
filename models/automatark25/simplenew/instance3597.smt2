(declare-const X String)
; Host\u{3A}Host\u{3A}User-Agent\u{3A}Serverad\u{2E}mokead\u{2E}com
(assert (str.in_re X (str.to_re "Host:Host:User-Agent:Serverad.mokead.com\u{a}")))
(check-sat)
