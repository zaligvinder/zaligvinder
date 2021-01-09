(declare-const X String)
; \\d{1,3}\\.\\d{1,3}\\.\\d{1,3}\\.\\d{1,3}
(assert (not (str.in.re X (re.++ (str.to.re "\x5c") ((_ re.loop 1 3) (str.to.re "d")) (str.to.re "\x5c") re.allchar (str.to.re "\x5c") ((_ re.loop 1 3) (str.to.re "d")) (str.to.re "\x5c") re.allchar (str.to.re "\x5c") ((_ re.loop 1 3) (str.to.re "d")) (str.to.re "\x5c") re.allchar (str.to.re "\x5c") ((_ re.loop 1 3) (str.to.re "d")) (str.to.re "\x0a")))))
; ^.*(([^\.][\.][wW][mM][aA])|([^\.][\.][mM][pP][3]))$
(assert (str.in.re X (re.++ (re.* re.allchar) (re.union (re.++ (re.comp (str.to.re ".")) (str.to.re ".") (re.union (str.to.re "w") (str.to.re "W")) (re.union (str.to.re "m") (str.to.re "M")) (re.union (str.to.re "a") (str.to.re "A"))) (re.++ (re.comp (str.to.re ".")) (str.to.re ".") (re.union (str.to.re "m") (str.to.re "M")) (re.union (str.to.re "p") (str.to.re "P")) (str.to.re "3"))) (str.to.re "\x0a"))))
; www\.actualnames\.com\s+toolbar_domain_redirect\s+Contactfrom=GhostVoiceServer
(assert (not (str.in.re X (re.++ (str.to.re "www.actualnames.com") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "toolbar_domain_redirect") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Contactfrom=GhostVoiceServer\x0a")))))
(check-sat)
