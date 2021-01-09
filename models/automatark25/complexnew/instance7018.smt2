(declare-const X String)
; stats\x2edrivecleaner\x2ecomExciteasdbiz\x2Ebiz
(assert (not (str.in.re X (str.to.re "stats.drivecleaner.com\x13Exciteasdbiz.biz\x0a"))))
; /\/i\.html\?[a-z0-9]+\=[a-zA-Z0-9]{25}/U
(assert (str.in.re X (re.++ (str.to.re "//i.html?") (re.+ (re.union (re.range "a" "z") (re.range "0" "9"))) (str.to.re "=") ((_ re.loop 25 25) (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9"))) (str.to.re "/U\x0a"))))
; www\x2Ealtnet\x2EcomHost\x3ANSIS_DOWNLOADSubject\x3AUser-Agent\x3Awww\x2Esearchingall\x2Ecom
(assert (str.in.re X (str.to.re "www.altnet.com\x1bHost:NSIS_DOWNLOADSubject:User-Agent:www.searchingall.com\x0a")))
(check-sat)
