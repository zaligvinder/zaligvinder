(declare-const X String)
; /filename=[^\n]*\x2etga/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".tga/i\x0a")))))
; PASSW=\w+www2\x2einstantbuzz\x2ecom\s+Online
(assert (not (str.in.re X (re.++ (str.to.re "PASSW=") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "www2.instantbuzz.com") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Online\x0a")))))
; /#([1-9]){2}([1-9]){2}([1-9]){2}/
(assert (str.in.re X (re.++ (str.to.re "/#") ((_ re.loop 2 2) (re.range "1" "9")) ((_ re.loop 2 2) (re.range "1" "9")) ((_ re.loop 2 2) (re.range "1" "9")) (str.to.re "/\x0a"))))
(check-sat)
