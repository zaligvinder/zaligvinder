(declare-const X String)
; /\x2em3u([\?\x5c\x2f]|$)/smiU
(assert (not (str.in.re X (re.++ (str.to.re "/.m3u") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a")))))
; /filename=[^\n]*\x2eflac/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".flac/i\x0a"))))
; LoginHost\x3a\x2Ffriendship\x2Femail_thank_you\?
(assert (str.in.re X (str.to.re "LoginHost:/friendship/email_thank_you?\x0a")))
(check-sat)
