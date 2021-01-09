(declare-const X String)
; (^(09|9)[1][1-9]\\d{7}$)|(^(09|9)[3][12456]\\d{7}$)
(assert (str.in.re X (re.union (re.++ (re.union (str.to.re "09") (str.to.re "9")) (str.to.re "1") (re.range "1" "9") (str.to.re "\x5c") ((_ re.loop 7 7) (str.to.re "d"))) (re.++ (str.to.re "\x0a") (re.union (str.to.re "09") (str.to.re "9")) (str.to.re "3") (re.union (str.to.re "1") (str.to.re "2") (str.to.re "4") (str.to.re "5") (str.to.re "6")) (str.to.re "\x5c") ((_ re.loop 7 7) (str.to.re "d"))))))
; ^[ .a-zA-Z0-9:-]{1,150}$
(assert (not (str.in.re X (re.++ ((_ re.loop 1 150) (re.union (str.to.re " ") (str.to.re ".") (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to.re ":") (str.to.re "-"))) (str.to.re "\x0a")))))
; /filename=[^\n]*\x2ezip/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".zip/i\x0a"))))
; ^[1-4]{1}[0-9]{4}(-)?[0-9]{7}(-)?[0-9]{1}$
(assert (not (str.in.re X (re.++ ((_ re.loop 1 1) (re.range "1" "4")) ((_ re.loop 4 4) (re.range "0" "9")) (re.opt (str.to.re "-")) ((_ re.loop 7 7) (re.range "0" "9")) (re.opt (str.to.re "-")) ((_ re.loop 1 1) (re.range "0" "9")) (str.to.re "\x0a")))))
(check-sat)
