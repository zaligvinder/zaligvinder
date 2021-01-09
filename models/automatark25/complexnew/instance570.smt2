(declare-const X String)
; /\x2epub([\?\x5c\x2f]|$)/smiU
(assert (str.in.re X (re.++ (str.to.re "/.pub") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a"))))
; adserver\.warezclient\.com530Host\x3A
(assert (str.in.re X (str.to.re "adserver.warezclient.com530Host:\x0a")))
; /filename=[^\n]*\x2ecsd/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".csd/i\x0a"))))
(check-sat)
