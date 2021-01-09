(declare-const X String)
; \x28robert\x40blackcastlesoft\x2Ecom\x29
(assert (not (str.in.re X (str.to.re "(robert@blackcastlesoft.com)\x0a"))))
; ^[0-9]{6}-[0-9pPtTfF][0-9]{3}$
(assert (str.in.re X (re.++ ((_ re.loop 6 6) (re.range "0" "9")) (str.to.re "-") (re.union (re.range "0" "9") (str.to.re "p") (str.to.re "P") (str.to.re "t") (str.to.re "T") (str.to.re "f") (str.to.re "F")) ((_ re.loop 3 3) (re.range "0" "9")) (str.to.re "\x0a"))))
; ^([a-zA-Z][a-zA-Z\&\-\.\'\s]*|)$
(assert (str.in.re X (re.++ (str.to.re "\x0a") (re.union (re.range "a" "z") (re.range "A" "Z")) (re.* (re.union (re.range "a" "z") (re.range "A" "Z") (str.to.re "&") (str.to.re "-") (str.to.re ".") (str.to.re "'") (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))))))
; /filename=[^\n]*\x2ef4v/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".f4v/i\x0a"))))
(check-sat)
