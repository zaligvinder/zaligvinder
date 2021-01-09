(declare-const X String)
; /^\/[\w-]{48}$/U
(assert (not (str.in.re X (re.++ (str.to.re "//") ((_ re.loop 48 48) (re.union (str.to.re "-") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "/U\x0a")))))
; Server\.exeHWPEServer\x3aHost\x3A
(assert (str.in.re X (str.to.re "Server.exeHWPEServer:Host:\x0a")))
; e2give\.com.*Login\s+adfsgecoiwnf\x23\x23\x23\x23User-Agent\x3A
(assert (not (str.in.re X (re.++ (str.to.re "e2give.com") (re.* re.allchar) (str.to.re "Login") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "adfsgecoiwnf\x1b####User-Agent:\x0a")))))
; config\x2E180solutions\x2Ecom\dStableWeb-MailUser-Agent\x3A
(assert (str.in.re X (re.++ (str.to.re "config.180solutions.com") (re.range "0" "9") (str.to.re "StableWeb-MailUser-Agent:\x0a"))))
; ^.+@[^\.].*\.[a-z]{2,}$
(assert (not (str.in.re X (re.++ (re.+ re.allchar) (str.to.re "@") (re.comp (str.to.re ".")) (re.* re.allchar) (str.to.re ".\x0a") ((_ re.loop 2 2) (re.range "a" "z")) (re.* (re.range "a" "z"))))))
(check-sat)
