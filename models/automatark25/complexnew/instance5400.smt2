(declare-const X String)
; StarLoggerCookie\x3aHost\x3APRODUCEDwebsearch\.getmirar\.com
(assert (not (str.in.re X (str.to.re "StarLoggerCookie:Host:PRODUCEDwebsearch.getmirar.com\x0a"))))
; ^[1-9]\d$
(assert (str.in.re X (re.++ (re.range "1" "9") (re.range "0" "9") (str.to.re "\x0a"))))
; \x22reaction\x2Etxt\x22User-Agent\x3AnewsSpyAgentsmrtshpr-cs-
(assert (str.in.re X (str.to.re "\x22reaction.txt\x22User-Agent:newsSpyAgentsmrtshpr-cs-\x13\x0a")))
; TOOLBARX-Mailer\x3a+dist\x2Eatlas\x2Dia\x2Ecom
(assert (str.in.re X (re.++ (str.to.re "TOOLBARX-Mailer") (re.+ (str.to.re ":")) (str.to.re "dist.atlas-ia.com\x0a"))))
(check-sat)
