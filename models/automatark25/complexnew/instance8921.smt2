(declare-const X String)
; /filename=[^\n]*\x2elnk/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".lnk/i\x0a")))))
; isiz=Xtrastepwebhancer\x2EcomStubbyOnever\x3aGhost
(assert (not (str.in.re X (str.to.re "isiz=Xtrastepwebhancer.comStubbyOnever:Ghost\x13\x0a"))))
; Activityfilename=\x22StarLoggerDAWeb-Mail
(assert (str.in.re X (str.to.re "Activityfilename=\x22StarLoggerDAWeb-Mail\x0a")))
; -[0-9]*[x][0-9]*
(assert (str.in.re X (re.++ (str.to.re "-") (re.* (re.range "0" "9")) (str.to.re "x") (re.* (re.range "0" "9")) (str.to.re "\x0a"))))
; mywayUser-Agent\x3AHost\x3ARedirector\x22body=FeaR\x25200\x2E2\x2E0\x2520Online\x3A\x2520\x5BIP_
(assert (str.in.re X (str.to.re "mywayUser-Agent:Host:Redirector\x22body=FeaR%200.2.0%20Online:%20[IP_\x0a")))
(check-sat)
