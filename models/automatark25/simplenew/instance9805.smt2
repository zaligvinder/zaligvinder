(declare-const X String)
; Host\x3ADIMBUSsidebar\.activeshopper\.comUser-Agent\x3APcast
(assert (str.in.re X (str.to.re "Host:DIMBUSsidebar.activeshopper.comUser-Agent:Pcast\x0a")))
(check-sat)
