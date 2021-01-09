(declare-const X String)
; /\x2f[a-z-_]{90,}\x2e(html|php)$/U
(assert (not (str.in.re X (re.++ (str.to.re "//.") (re.union (str.to.re "html") (str.to.re "php")) (str.to.re "/U\x0a") ((_ re.loop 90 90) (re.union (re.range "a" "z") (str.to.re "-") (str.to.re "_"))) (re.* (re.union (re.range "a" "z") (str.to.re "-") (str.to.re "_")))))))
; /filename=[^\n]*\x2ehhk/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".hhk/i\x0a")))))
; /filename=[^\n]*\x2edvr-ms/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".dvr-ms/i\x0a")))))
; /^([0-2]\d\d){75}/P
(assert (not (str.in.re X (re.++ (str.to.re "/") ((_ re.loop 75 75) (re.++ (re.range "0" "2") (re.range "0" "9") (re.range "0" "9"))) (str.to.re "/P\x0a")))))
; /filename=[^\n]*\x2ejp2/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".jp2/i\x0a")))))
(check-sat)
