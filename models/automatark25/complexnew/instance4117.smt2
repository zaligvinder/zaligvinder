(declare-const X String)
; www\x2Emyarmory\x2EcomHost\x3aHost\x3amessagessearch\x2eimesh\x2ecom
(assert (str.in.re X (str.to.re "www.myarmory.comHost:Host:messagessearch.imesh.com\x0a")))
; ActMonHost\x3ABossUser-Agent\x3A
(assert (str.in.re X (str.to.re "ActMonHost:BossUser-Agent:\x0a")))
(check-sat)
