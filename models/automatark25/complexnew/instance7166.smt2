(declare-const X String)
; User-Agent\u{3A}\d+User-Agent\u{3A}\d+connectedNodes\/cgi-bin\/PopupV
(assert (str.in_re X (re.++ (str.to_re "User-Agent:") (re.+ (re.range "0" "9")) (str.to_re "User-Agent:") (re.+ (re.range "0" "9")) (str.to_re "connectedNodes/cgi-bin/PopupV\u{a}"))))
; \/cgi-bin\/PopupVHost\u{3A}piolet\u{D}\u{A}\u{D}\u{A}Attached
(assert (not (str.in_re X (str.to_re "/cgi-bin/PopupVHost:piolet\u{d}\u{a}\u{d}\u{a}Attached\u{a}"))))
; toc=MicrosoftStartupStarLoggerServerX-Mailer\u{3a}
(assert (str.in_re X (str.to_re "toc=MicrosoftStartupStarLoggerServerX-Mailer:\u{13}\u{a}")))
(check-sat)
