(declare-const X String)
; /filename=[^\n]*\x2eapk/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".apk/i\x0a")))))
; \d{2}\s?[A-Z]{1,3}\s?\d{2,4}
(assert (not (str.in.re X (re.++ ((_ re.loop 2 2) (re.range "0" "9")) (re.opt (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) ((_ re.loop 1 3) (re.range "A" "Z")) (re.opt (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) ((_ re.loop 2 4) (re.range "0" "9")) (str.to.re "\x0a")))))
; (^\d{5}$)|(^\d{5}-\d{4}$)
(assert (not (str.in.re X (re.union ((_ re.loop 5 5) (re.range "0" "9")) (re.++ (str.to.re "\x0a") ((_ re.loop 5 5) (re.range "0" "9")) (str.to.re "-") ((_ re.loop 4 4) (re.range "0" "9")))))))
(check-sat)
