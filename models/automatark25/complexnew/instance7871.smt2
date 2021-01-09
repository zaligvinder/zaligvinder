(declare-const X String)
; for mobile:^[0][1-9]{1}[0-9]{9}$
(assert (not (str.in.re X (re.++ (str.to.re "for mobile:0") ((_ re.loop 1 1) (re.range "1" "9")) ((_ re.loop 9 9) (re.range "0" "9")) (str.to.re "\x0a")))))
; ^(0|(\+)?([1-9]{1}[0-9]{0,3})|([1-5]{1}[0-9]{1,4}|[6]{1}([0-4]{1}[0-9]{3}|[5]{1}([0-4]{1}[0-9]{2}|[5]{1}([0-2]{1}[0-9]{1}|[3]{1}[0-5]{1})))))$
(assert (not (str.in.re X (re.++ (re.union (str.to.re "0") (re.++ (re.opt (str.to.re "+")) ((_ re.loop 1 1) (re.range "1" "9")) ((_ re.loop 0 3) (re.range "0" "9"))) (re.++ ((_ re.loop 1 1) (re.range "1" "5")) ((_ re.loop 1 4) (re.range "0" "9"))) (re.++ ((_ re.loop 1 1) (str.to.re "6")) (re.union (re.++ ((_ re.loop 1 1) (re.range "0" "4")) ((_ re.loop 3 3) (re.range "0" "9"))) (re.++ ((_ re.loop 1 1) (str.to.re "5")) (re.union (re.++ ((_ re.loop 1 1) (re.range "0" "4")) ((_ re.loop 2 2) (re.range "0" "9"))) (re.++ ((_ re.loop 1 1) (str.to.re "5")) (re.union (re.++ ((_ re.loop 1 1) (re.range "0" "2")) ((_ re.loop 1 1) (re.range "0" "9"))) (re.++ ((_ re.loop 1 1) (str.to.re "3")) ((_ re.loop 1 1) (re.range "0" "5")))))))))) (str.to.re "\x0a")))))
; (0?[1-9]|[1-9][0-9])[0-9]{6}(-| )?[trwagmyfpdxbnjzsqvhlcke]
(assert (not (str.in.re X (re.++ (re.union (re.++ (re.opt (str.to.re "0")) (re.range "1" "9")) (re.++ (re.range "1" "9") (re.range "0" "9"))) ((_ re.loop 6 6) (re.range "0" "9")) (re.opt (re.union (str.to.re "-") (str.to.re " "))) (re.union (str.to.re "t") (str.to.re "r") (str.to.re "w") (str.to.re "a") (str.to.re "g") (str.to.re "m") (str.to.re "y") (str.to.re "f") (str.to.re "p") (str.to.re "d") (str.to.re "x") (str.to.re "b") (str.to.re "n") (str.to.re "j") (str.to.re "z") (str.to.re "s") (str.to.re "q") (str.to.re "v") (str.to.re "h") (str.to.re "l") (str.to.re "c") (str.to.re "k") (str.to.re "e")) (str.to.re "\x0a")))))
; /\x2Ermf([\?\x5c\x2f]|$)/smiU
(assert (str.in.re X (re.++ (str.to.re "/.rmf") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a"))))
(check-sat)
