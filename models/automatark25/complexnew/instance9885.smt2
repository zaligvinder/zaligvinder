(declare-const X String)
; www\x2Ericercadoppia\x2Ecom\w+TPSystem\s+User-Agent\x3A
(assert (str.in.re X (re.++ (str.to.re "www.ricercadoppia.com") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "TPSystem") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "User-Agent:\x0a"))))
; Handyst=ClassStopperHost\x3ASpamBlockerUtility
(assert (not (str.in.re X (str.to.re "Handyst=ClassStopperHost:SpamBlockerUtility\x0a"))))
; User-Agent\x3a\s+Host\x3AnamediepluginHost\x3AX-Mailer\x3A
(assert (not (str.in.re X (re.++ (str.to.re "User-Agent:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Host:namediepluginHost:X-Mailer:\x13\x0a")))))
; to=\x2Fezsb\s\x3Ahirmvtg\x2fggqh\.kqhSPYzzzvmkituktgr\x2fetie
(assert (str.in.re X (re.++ (str.to.re "to=/ezsb") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re ":hirmvtg/ggqh.kqh\x1bSPYzzzvmkituktgr/etie\x0a"))))
; /^\/f(\/[^\x2f]+)?\/14\d{8}(\/\d{9,10})?(\/\d)+(\/x[a-f0-9]+(\x3b\d)+?)?$/U
(assert (not (str.in.re X (re.++ (str.to.re "//f") (re.opt (re.++ (str.to.re "/") (re.+ (re.comp (str.to.re "/"))))) (str.to.re "/14") ((_ re.loop 8 8) (re.range "0" "9")) (re.opt (re.++ (str.to.re "/") ((_ re.loop 9 10) (re.range "0" "9")))) (re.+ (re.++ (str.to.re "/") (re.range "0" "9"))) (re.opt (re.++ (str.to.re "/x") (re.+ (re.union (re.range "a" "f") (re.range "0" "9"))) (re.+ (re.++ (str.to.re ";") (re.range "0" "9"))))) (str.to.re "/U\x0a")))))
(check-sat)
