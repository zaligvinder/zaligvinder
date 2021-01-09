(declare-const X String)
; OS\x2F\d+User-Agent\x3AUser-Agent\x3A
(assert (str.in.re X (re.++ (str.to.re "OS/") (re.+ (re.range "0" "9")) (str.to.re "User-Agent:User-Agent:\x0a"))))
; mywayUser-Agent\x3AHost\x3ARedirector\x22body=FeaR\x25200\x2E2\x2E0\x2520Online\x3A\x2520\x5BIP_
(assert (not (str.in.re X (str.to.re "mywayUser-Agent:Host:Redirector\x22body=FeaR%200.2.0%20Online:%20[IP_\x0a"))))
; \x2FrssScaneradfsgecoiwnf\x7D\x7BTrojan\x3AlogsHost\x3a
(assert (str.in.re X (str.to.re "/rssScaneradfsgecoiwnf\x1b}{Trojan:logsHost:\x0a")))
; ^(0[1-9]|[12][0-9]|3[01])/(0[1-9]|1[012])/((19|20)\d{2}|\d{2})$
(assert (str.in.re X (re.++ (re.union (re.++ (str.to.re "0") (re.range "1" "9")) (re.++ (re.union (str.to.re "1") (str.to.re "2")) (re.range "0" "9")) (re.++ (str.to.re "3") (re.union (str.to.re "0") (str.to.re "1")))) (str.to.re "/") (re.union (re.++ (str.to.re "0") (re.range "1" "9")) (re.++ (str.to.re "1") (re.union (str.to.re "0") (str.to.re "1") (str.to.re "2")))) (str.to.re "/") (re.union (re.++ (re.union (str.to.re "19") (str.to.re "20")) ((_ re.loop 2 2) (re.range "0" "9"))) ((_ re.loop 2 2) (re.range "0" "9"))) (str.to.re "\x0a"))))
(check-sat)
