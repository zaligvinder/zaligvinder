(declare-const X String)
; www\x2Ealtnet\x2EcomHost\x3ANSIS_DOWNLOADSubject\x3AUser-Agent\x3Awww\x2Esearchingall\x2Ecom
(assert (not (str.in.re X (str.to.re "www.altnet.com\x1bHost:NSIS_DOWNLOADSubject:User-Agent:www.searchingall.com\x0a"))))
(check-sat)
