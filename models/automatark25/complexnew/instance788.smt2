(declare-const X String)
; ^([a-z0-9]+[.+-])*([a-z0-9]+)+@(([a-z0-9]+[.-])+([a-z]{2,})$|(([0-9]|[1-9][0-9]|1[0-9]{1,2}|2[0-4][0-9]|25[0-5])(\.|$)){4})
(assert (str.in.re X (re.++ (re.* (re.++ (re.+ (re.union (re.range "a" "z") (re.range "0" "9"))) (re.union (str.to.re ".") (str.to.re "+") (str.to.re "-")))) (re.+ (re.+ (re.union (re.range "a" "z") (re.range "0" "9")))) (str.to.re "@") (re.union (re.++ (re.+ (re.++ (re.+ (re.union (re.range "a" "z") (re.range "0" "9"))) (re.union (str.to.re ".") (str.to.re "-")))) ((_ re.loop 2 2) (re.range "a" "z")) (re.* (re.range "a" "z"))) ((_ re.loop 4 4) (re.++ (re.union (re.range "0" "9") (re.++ (re.range "1" "9") (re.range "0" "9")) (re.++ (str.to.re "1") ((_ re.loop 1 2) (re.range "0" "9"))) (re.++ (str.to.re "2") (re.range "0" "4") (re.range "0" "9")) (re.++ (str.to.re "25") (re.range "0" "5"))) (str.to.re ".")))) (str.to.re "\x0a"))))
; www\x2Ecameup\x2Ecom\s+spyblini\x2Eini
(assert (not (str.in.re X (re.++ (str.to.re "www.cameup.com\x13") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "spyblini.ini\x0a")))))
; /filename=[^\n]*\x2eswf/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".swf/i\x0a")))))
; /filename=[^\n]*\x2eflv/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".flv/i\x0a")))))
; [\+]?[1]?[-. ]?(\(\d{3}\)|\d{3})(|[-. ])?\d{3}(|[-. ])\d{4}|\d{3}(|[-. ])\d{4}
(assert (str.in.re X (re.union (re.++ (re.opt (str.to.re "+")) (re.opt (str.to.re "1")) (re.opt (re.union (str.to.re "-") (str.to.re ".") (str.to.re " "))) (re.union (re.++ (str.to.re "(") ((_ re.loop 3 3) (re.range "0" "9")) (str.to.re ")")) ((_ re.loop 3 3) (re.range "0" "9"))) (re.opt (re.union (str.to.re "-") (str.to.re ".") (str.to.re " "))) ((_ re.loop 3 3) (re.range "0" "9")) (re.union (str.to.re "-") (str.to.re ".") (str.to.re " ")) ((_ re.loop 4 4) (re.range "0" "9"))) (re.++ ((_ re.loop 3 3) (re.range "0" "9")) (re.union (str.to.re "-") (str.to.re ".") (str.to.re " ")) ((_ re.loop 4 4) (re.range "0" "9")) (str.to.re "\x0a")))))
(check-sat)
