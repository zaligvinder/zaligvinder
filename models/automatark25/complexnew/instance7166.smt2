(declare-const X String)
; User-Agent\x3A\d+User-Agent\x3A\d+connectedNodes\/cgi-bin\/PopupV
(assert (str.in.re X (re.++ (str.to.re "User-Agent:") (re.+ (re.range "0" "9")) (str.to.re "User-Agent:") (re.+ (re.range "0" "9")) (str.to.re "connectedNodes/cgi-bin/PopupV\x0a"))))
; \/cgi-bin\/PopupVHost\x3Apiolet\x0D\x0A\x0D\x0AAttached
(assert (not (str.in.re X (str.to.re "/cgi-bin/PopupVHost:piolet\x0d\x0a\x0d\x0aAttached\x0a"))))
; toc=MicrosoftStartupStarLoggerServerX-Mailer\x3a
(assert (str.in.re X (str.to.re "toc=MicrosoftStartupStarLoggerServerX-Mailer:\x13\x0a")))
(check-sat)
