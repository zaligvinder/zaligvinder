(declare-const X String)
; started\x2E.*\/cgi-bin\/PopupV
(assert (str.in.re X (re.++ (str.to.re "started.") (re.* re.allchar) (str.to.re "/cgi-bin/PopupV\x0a"))))
; www\x2Ewebcruiser\x2Eccgot
(assert (not (str.in.re X (str.to.re "www.webcruiser.ccgot\x0a"))))
(check-sat)
