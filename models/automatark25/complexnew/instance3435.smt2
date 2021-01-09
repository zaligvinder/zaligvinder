(declare-const X String)
; jsp\s+pjpoptwql\x2frlnj[^\n\r]*Host\x3A
(assert (str.in.re X (re.++ (str.to.re "jsp") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "pjpoptwql/rlnj") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "Host:\x0a"))))
; Referer\x3A\s+www\x2eproventactics\x2ecom
(assert (str.in.re X (re.++ (str.to.re "Referer:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "www.proventactics.com\x0a"))))
; User-Agent\x3A\x2Ftba\x2FFrom\x3A
(assert (str.in.re X (str.to.re "User-Agent:/tba/From:\x0a")))
; Logtraffbest\x2EbizAdToolsLogged
(assert (not (str.in.re X (str.to.re "Logtraffbest.bizAdToolsLogged\x0a"))))
; spyblpat.*is[^\n\r]*BarFrom\x3AHost\x3Agdvsotuqwsg\x2fdxt\.hdPASSW=
(assert (not (str.in.re X (re.++ (str.to.re "spyblpat") (re.* re.allchar) (str.to.re "is") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "BarFrom:Host:gdvsotuqwsg/dxt.hdPASSW=\x0a")))))
(check-sat)
