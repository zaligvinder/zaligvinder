(declare-const X String)
; /filename=[^\n]*\x2emka/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".mka/i\x0a")))))
; com\dsearch\x2econduit\x2ecom\s+User-Agent\x3A
(assert (not (str.in.re X (re.++ (str.to.re "com") (re.range "0" "9") (str.to.re "search.conduit.com") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "User-Agent:\x0a")))))
; \w*$
(assert (str.in.re X (re.++ (re.* (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "\x0a"))))
; ^([9]{1})+(6|3|2|1{1})+([0-9]{7})$
(assert (not (str.in.re X (re.++ (re.+ ((_ re.loop 1 1) (str.to.re "9"))) (re.+ (re.union (str.to.re "6") (str.to.re "3") (str.to.re "2") ((_ re.loop 1 1) (str.to.re "1")))) ((_ re.loop 7 7) (re.range "0" "9")) (str.to.re "\x0a")))))
(check-sat)
