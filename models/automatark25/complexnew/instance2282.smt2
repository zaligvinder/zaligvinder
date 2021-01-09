(declare-const X String)
; RXFilteredDmInf\x5EJMailYeah\!Online\x2521\x2521\x2521Reportsversion\x2Etxt
(assert (not (str.in.re X (str.to.re "RXFilteredDmInf^JMailYeah!Online%21%21%21Reportsversion.txt\x0a"))))
; www\.actualnames\.com\s+toolbar_domain_redirect\s+Contactfrom=GhostVoiceServer
(assert (str.in.re X (re.++ (str.to.re "www.actualnames.com") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "toolbar_domain_redirect") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Contactfrom=GhostVoiceServer\x0a"))))
(check-sat)
