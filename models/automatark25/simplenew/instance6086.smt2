(declare-const X String)
; www\x2Emyarmory\x2EcomHost\x3aHost\x3amessagessearch\x2eimesh\x2ecom
(assert (not (str.in.re X (str.to.re "www.myarmory.comHost:Host:messagessearch.imesh.com\x0a"))))
(check-sat)
