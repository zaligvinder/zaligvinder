(declare-const X String)
; /filename=[^\n]*\x2exspf/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".xspf/i\x0a"))))
; /\x2evwr([\?\x5c\x2f]|$)/smiU
(assert (str.in.re X (re.++ (str.to.re "/.vwr") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a"))))
; /^\d{2}[\-\/]\d{2}[\-\/]\d{4}$/
(assert (not (str.in.re X (re.++ (str.to.re "/") ((_ re.loop 2 2) (re.range "0" "9")) (re.union (str.to.re "-") (str.to.re "/")) ((_ re.loop 2 2) (re.range "0" "9")) (re.union (str.to.re "-") (str.to.re "/")) ((_ re.loop 4 4) (re.range "0" "9")) (str.to.re "/\x0a")))))
; Host\x3A\swww\x2Etopadwarereviews\x2Ecom
(assert (str.in.re X (re.++ (str.to.re "Host:") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "www.topadwarereviews.com\x0a"))))
; \stoolbar\.anwb\.nl.*Host\x3A
(assert (str.in.re X (re.++ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "toolbar.anwb.nl") (re.* re.allchar) (str.to.re "Host:\x0a"))))
(check-sat)
