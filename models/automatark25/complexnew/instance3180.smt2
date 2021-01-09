(declare-const X String)
; CUSTOM\swww\x2Elocators\x2Ecomas\x2Estarware\x2Ecom
(assert (str.in.re X (re.++ (str.to.re "CUSTOM") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "www.locators.comas.starware.com\x0a"))))
; /filename=[^\n]*\x2eqcp/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".qcp/i\x0a")))))
; toc=MicrosoftStartupStarLoggerServerX-Mailer\x3a
(assert (str.in.re X (str.to.re "toc=MicrosoftStartupStarLoggerServerX-Mailer:\x13\x0a")))
(check-sat)
