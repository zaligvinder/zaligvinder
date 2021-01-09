(declare-const X String)
; Toolbar\x2Fimages\x2Fnocache\x2Ftr\x2Fgca\x2Fm\.gif\?
(assert (not (str.in.re X (str.to.re "Toolbar/images/nocache/tr/gca/m.gif?\x0a"))))
(check-sat)
