(declare-const X String)
; Mirar_KeywordContent
(assert (str.in.re X (str.to.re "Mirar_KeywordContent\x13\x0a")))
; Host\x3anotificationwww\.thecommunicator\.net
(assert (not (str.in.re X (str.to.re "Host:notification\x13www.thecommunicator.net\x0a"))))
; /\x2ecnt([\?\x5c\x2f]|$)/smiU
(assert (not (str.in.re X (re.++ (str.to.re "/.cnt") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a")))))
; (\d{3}\-\d{2}\-\d{4})
(assert (str.in.re X (re.++ (str.to.re "\x0a") ((_ re.loop 3 3) (re.range "0" "9")) (str.to.re "-") ((_ re.loop 2 2) (re.range "0" "9")) (str.to.re "-") ((_ re.loop 4 4) (re.range "0" "9")))))
(check-sat)
