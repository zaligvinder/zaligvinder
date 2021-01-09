(declare-const X String)
; Theef2Host\x3AWordcommunityUser-Agent\x3AHost\x3ATPSystemHost\x3AHost\x3APro
(assert (str.in.re X (str.to.re "Theef2Host:WordcommunityUser-Agent:Host:TPSystemHost:Host:Pro\x0a")))
(check-sat)
