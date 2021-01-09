(declare-const X String)
; Ts2\x2FUser-Agent\x3Aactualnames\.comGURLwww\x2Ealtnet\x2Ecom
(assert (str.in.re X (str.to.re "Ts2/User-Agent:actualnames.comGURLwww.altnet.com\x1b\x0a")))
(check-sat)
