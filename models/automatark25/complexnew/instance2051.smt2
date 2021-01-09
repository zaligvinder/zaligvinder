(declare-const X String)
; \x2Frss\d+answer\sHost\x3A
(assert (not (str.in.re X (re.++ (str.to.re "/rss") (re.+ (re.range "0" "9")) (str.to.re "answer") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "Host:\x0a")))))
; ^([A-z]{2}\d{7})|([A-z]{4}\d{10})$
(assert (str.in.re X (re.union (re.++ ((_ re.loop 2 2) (re.range "A" "z")) ((_ re.loop 7 7) (re.range "0" "9"))) (re.++ (str.to.re "\x0a") ((_ re.loop 4 4) (re.range "A" "z")) ((_ re.loop 10 10) (re.range "0" "9"))))))
(check-sat)
