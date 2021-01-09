(declare-const X String)
; User-Agent\x3AX-Mailer\x3aHost\x3Adcww\x2Edmcast\x2Ecom
(assert (str.in.re X (str.to.re "User-Agent:X-Mailer:\x13Host:dcww.dmcast.com\x0a")))
; \sKeylogging\s+ApofisToolbar
(assert (not (str.in.re X (re.++ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "Keylogging\x13") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "ApofisToolbar\x0a")))))
; ^([A-Z]|[a-z]){4} ?[0-9]{6}-?[0-9]{1}$
(assert (str.in.re X (re.++ ((_ re.loop 4 4) (re.union (re.range "A" "Z") (re.range "a" "z"))) (re.opt (str.to.re " ")) ((_ re.loop 6 6) (re.range "0" "9")) (re.opt (str.to.re "-")) ((_ re.loop 1 1) (re.range "0" "9")) (str.to.re "\x0a"))))
(check-sat)
