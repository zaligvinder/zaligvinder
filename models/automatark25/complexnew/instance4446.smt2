(declare-const X String)
; Ts2\x2FUser-Agent\x3Aactualnames\.comGURLwww\x2Ealtnet\x2Ecom
(assert (str.in.re X (str.to.re "Ts2/User-Agent:actualnames.comGURLwww.altnet.com\x1b\x0a")))
; Logtraffbest\x2EbizAdToolsLogged
(assert (not (str.in.re X (str.to.re "Logtraffbest.bizAdToolsLogged\x0a"))))
; /filename=[^\n]*\x2eotf/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".otf/i\x0a"))))
(check-sat)
