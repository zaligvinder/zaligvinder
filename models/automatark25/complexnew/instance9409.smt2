(declare-const X String)
; TOOLBARX-Mailer\x3a+dist\x2Eatlas\x2Dia\x2Ecom
(assert (not (str.in.re X (re.++ (str.to.re "TOOLBARX-Mailer") (re.+ (str.to.re ":")) (str.to.re "dist.atlas-ia.com\x0a")))))
; Keystrokes.*LOG.*Host\x3Awww\x2Eserverlogic3\x2Ecom
(assert (not (str.in.re X (re.++ (str.to.re "Keystrokes") (re.* re.allchar) (str.to.re "LOG") (re.* re.allchar) (str.to.re "Host:www.serverlogic3.com\x0a")))))
(check-sat)
