(declare-const X String)
; ^/{1}(((/{1}\.{1})?[a-zA-Z0-9 ]+/?)+(\.{1}[a-zA-Z0-9]{2,4})?)$
(assert (not (str.in.re X (re.++ ((_ re.loop 1 1) (str.to.re "/")) (str.to.re "\x0a") (re.+ (re.++ (re.opt (re.++ ((_ re.loop 1 1) (str.to.re "/")) ((_ re.loop 1 1) (str.to.re ".")))) (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to.re " "))) (re.opt (str.to.re "/")))) (re.opt (re.++ ((_ re.loop 1 1) (str.to.re ".")) ((_ re.loop 2 4) (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9")))))))))
; url=\swww\x2Ealfacleaner\x2Ecom\d+Host\x3A\x2Fproducts\x2Fspyblocs\x2F
(assert (not (str.in.re X (re.++ (str.to.re "url=") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "www.alfacleaner.com") (re.+ (re.range "0" "9")) (str.to.re "Host:/products/spyblocs/\x13\x0a")))))
; ^(00|0?[1-9]|1[0-9]|2[0-3])\:([0-5][0-9])\:([0-5][0-9])$
(assert (str.in.re X (re.++ (re.union (str.to.re "00") (re.++ (re.opt (str.to.re "0")) (re.range "1" "9")) (re.++ (str.to.re "1") (re.range "0" "9")) (re.++ (str.to.re "2") (re.range "0" "3"))) (str.to.re "::\x0a") (re.range "0" "5") (re.range "0" "9") (re.range "0" "5") (re.range "0" "9"))))
; /filename=[^\n]*\x2eaddin/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".addin/i\x0a")))))
; www\.123mania\.comSubject\x3APromulGate666Logger-iVisicom
(assert (not (str.in.re X (str.to.re "www.123mania.comSubject:PromulGate666Logger-iVisicom\x0a"))))
(check-sat)
