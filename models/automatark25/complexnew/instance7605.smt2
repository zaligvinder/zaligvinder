(declare-const X String)
; ^-?\d+([.,]?\d+)?$
(assert (str.in.re X (re.++ (re.opt (str.to.re "-")) (re.+ (re.range "0" "9")) (re.opt (re.++ (re.opt (re.union (str.to.re ".") (str.to.re ","))) (re.+ (re.range "0" "9")))) (str.to.re "\x0a"))))
; /filename=[^\n]*\x2ewri/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".wri/i\x0a")))))
; toc=MicrosoftStartupStarLoggerServerX-Mailer\x3a
(assert (str.in.re X (str.to.re "toc=MicrosoftStartupStarLoggerServerX-Mailer:\x13\x0a")))
; \x2Ephp\s+Host\x3Aorigin\x3Dsidefind\x22The
(assert (not (str.in.re X (re.++ (str.to.re ".php") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Host:origin=sidefind\x22The\x0a")))))
; /STOR fp[0-9A-F]{44}\x2ebin/
(assert (not (str.in.re X (re.++ (str.to.re "/STOR fp") ((_ re.loop 44 44) (re.union (re.range "0" "9") (re.range "A" "F"))) (str.to.re ".bin/\x0a")))))
(check-sat)
