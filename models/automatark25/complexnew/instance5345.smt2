(declare-const X String)
; /filename=[^\n]*\x2eeps/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".eps/i\x0a"))))
; www\x2Ealtnet\x2EcomHost\x3ANSIS_DOWNLOADSubject\x3AUser-Agent\x3Awww\x2Esearchingall\x2Ecom
(assert (str.in.re X (str.to.re "www.altnet.com\x1bHost:NSIS_DOWNLOADSubject:User-Agent:www.searchingall.com\x0a")))
; eveocczmthmmq\x2fomzlHello\x2E\x2Fasp\x2Foffers\.asp\?
(assert (not (str.in.re X (str.to.re "eveocczmthmmq/omzlHello./asp/offers.asp?\x0a"))))
(check-sat)
