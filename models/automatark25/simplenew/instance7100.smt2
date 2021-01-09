(declare-const X String)
; Bar\x2Fnewsurfer4\x2Fclient=BysooTBADdcww\x2Edmcast\x2Ecomc\.goclick\.com
(assert (str.in.re X (str.to.re "Bar/newsurfer4/client=BysooTBADdcww.dmcast.comc.goclick.com\x0a")))
(check-sat)
