(declare-const X String)
; started\x2E.*\/cgi-bin\/PopupV
(assert (str.in.re X (re.++ (str.to.re "started.") (re.* re.allchar) (str.to.re "/cgi-bin/PopupV\x0a"))))
(check-sat)
