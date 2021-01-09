(declare-const X String)
; mywayUser-Agent\x3AHost\x3ARedirector\x22body=FeaR\x25200\x2E2\x2E0\x2520Online\x3A\x2520\x5BIP_
(assert (str.in.re X (str.to.re "mywayUser-Agent:Host:Redirector\x22body=FeaR%200.2.0%20Online:%20[IP_\x0a")))
(check-sat)
