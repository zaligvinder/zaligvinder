(declare-const X String)
; A-311ServerUser-Agent\x3Ascn\x2emystoretoolbar\x2ecomWindowswww\.trackhits\.ccHost\x3a
(assert (str.in.re X (str.to.re "A-311ServerUser-Agent:scn.mystoretoolbar.com\x13Windowswww.trackhits.ccHost:\x0a")))
(check-sat)
