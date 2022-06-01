(declare-const X String)
; Host\u{3A}DIMBUSsidebar\.activeshopper\.comUser-Agent\u{3A}Pcast
(assert (str.in_re X (str.to_re "Host:DIMBUSsidebar.activeshopper.comUser-Agent:Pcast\u{a}")))
(check-sat)
