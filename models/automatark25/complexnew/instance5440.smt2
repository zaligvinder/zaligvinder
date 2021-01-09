(declare-const X String)
; /\x2f\?[0-9a-f]{60,66}[\x3b\d]*$/U
(assert (not (str.in.re X (re.++ (str.to.re "//?") ((_ re.loop 60 66) (re.union (re.range "0" "9") (re.range "a" "f"))) (re.* (re.union (str.to.re ";") (re.range "0" "9"))) (str.to.re "/U\x0a")))))
; config\x2E180solutions\x2Ecom\dStableWeb-MailUser-Agent\x3A
(assert (not (str.in.re X (re.++ (str.to.re "config.180solutions.com") (re.range "0" "9") (str.to.re "StableWeb-MailUser-Agent:\x0a")))))
; /filename=[^\n]*\x2eeps/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".eps/i\x0a"))))
(check-sat)
