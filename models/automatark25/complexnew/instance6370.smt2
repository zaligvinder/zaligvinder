(declare-const X String)
; /filename=[^\n]*\x2emp4/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".mp4/i\x0a"))))
; SbAts[^\n\r]*Subject\x3a\d+dcww\x2Edmcast\x2Ecom
(assert (not (str.in.re X (re.++ (str.to.re "SbAts") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "Subject:") (re.+ (re.range "0" "9")) (str.to.re "dcww.dmcast.com\x0a")))))
; IP\d+SAHPORT-User-Agent\x3AUser-Agent\x3A
(assert (str.in.re X (re.++ (str.to.re "IP") (re.+ (re.range "0" "9")) (str.to.re "SAHPORT-User-Agent:User-Agent:\x0a"))))
; report\<\x2Ftitle\>Referer\x3Aaresflashdownloader\x2EcomHost\x3ADeathpioletLOGtowww\x2Esearchexpert\x2Ecom
(assert (not (str.in.re X (str.to.re "report</title>Referer:aresflashdownloader.comHost:DeathpioletLOGtowww.searchexpert.com\x0a"))))
; [\x01-\x08,\x0A-\x1F,\x7F,\x81,\x8D,\x8F,\x90,\x9D]
(assert (str.in.re X (re.++ (re.union (re.range "\x01" "\x08") (str.to.re ",") (re.range "\x0a" "\x1f") (str.to.re "\x7f") (str.to.re "\x81") (str.to.re "\x8d") (str.to.re "\x8f") (str.to.re "\x90") (str.to.re "\x9d")) (str.to.re "\x0a"))))
(check-sat)
