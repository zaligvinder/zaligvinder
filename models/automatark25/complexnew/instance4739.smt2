(declare-const X String)
; ^([a-zA-Z][a-zA-Z\&\-\.\'\s]*|)$
(assert (not (str.in.re X (re.++ (str.to.re "\x0a") (re.union (re.range "a" "z") (re.range "A" "Z")) (re.* (re.union (re.range "a" "z") (re.range "A" "Z") (str.to.re "&") (str.to.re "-") (str.to.re ".") (str.to.re "'") (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")))))))
; /\x2exsl([\?\x5c\x2f]|$)/smiU
(assert (not (str.in.re X (re.++ (str.to.re "/.xsl") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a")))))
; /\x2erm([\?\x5c\x2f]|$)/smiU
(assert (not (str.in.re X (re.++ (str.to.re "/.rm") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a")))))
; /filename=[^\n]*\x2ejfif/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".jfif/i\x0a"))))
; report\<\x2Ftitle\>Referer\x3Aaresflashdownloader\x2EcomHost\x3ADeathpioletLOGtowww\x2Esearchexpert\x2Ecom
(assert (not (str.in.re X (str.to.re "report</title>Referer:aresflashdownloader.comHost:DeathpioletLOGtowww.searchexpert.com\x0a"))))
(check-sat)
