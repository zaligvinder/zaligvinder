(declare-const X String)
; \x2Fimages\x2Fnocache\x2Ftr\x2Fgca\x2Fm\.gif\?
(assert (not (str.in.re X (str.to.re "/images/nocache/tr/gca/m.gif?\x0a"))))
; www\x2Emyarmory\x2EcomHost\x3aHost\x3amessagessearch\x2eimesh\x2ecom
(assert (not (str.in.re X (str.to.re "www.myarmory.comHost:Host:messagessearch.imesh.com\x0a"))))
(check-sat)
