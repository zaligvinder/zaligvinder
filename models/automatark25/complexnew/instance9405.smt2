(declare-const X String)
; /filename=[^\n]*\x2emp3/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".mp3/i\x0a")))))
; MailerHost\x3AUser-Agent\x3A
(assert (not (str.in.re X (str.to.re "MailerHost:User-Agent:\x0a"))))
(check-sat)
