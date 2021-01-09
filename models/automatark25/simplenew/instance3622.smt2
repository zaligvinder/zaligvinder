(declare-const X String)
; \x2Fimages\x2Fnocache\x2Ftr\x2Fgca\x2Fm\.gif\?
(assert (str.in.re X (str.to.re "/images/nocache/tr/gca/m.gif?\x0a")))
(check-sat)
