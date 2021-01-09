(declare-const X String)
; /\/\[fx]\.jar$/U
(assert (not (str.in.re X (str.to.re "//[fx].jar/U\x0a"))))
; [cC]{1}[0-9]{0,7}
(assert (str.in.re X (re.++ ((_ re.loop 1 1) (re.union (str.to.re "c") (str.to.re "C"))) ((_ re.loop 0 7) (re.range "0" "9")) (str.to.re "\x0a"))))
; ^([0]\d|[1][0-2])\/([0-2]\d|[3][0-1])\/([2][01]|[1][6-9])\d{2}(\s([0]\d|[1][0-2])(\:[0-5]\d){1,2})*\s*([aApP][mM]{0,2})?$
(assert (str.in.re X (re.++ (re.union (re.++ (str.to.re "0") (re.range "0" "9")) (re.++ (str.to.re "1") (re.range "0" "2"))) (str.to.re "/") (re.union (re.++ (re.range "0" "2") (re.range "0" "9")) (re.++ (str.to.re "3") (re.range "0" "1"))) (str.to.re "/") (re.union (re.++ (str.to.re "2") (re.union (str.to.re "0") (str.to.re "1"))) (re.++ (str.to.re "1") (re.range "6" "9"))) ((_ re.loop 2 2) (re.range "0" "9")) (re.* (re.++ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (re.union (re.++ (str.to.re "0") (re.range "0" "9")) (re.++ (str.to.re "1") (re.range "0" "2"))) ((_ re.loop 1 2) (re.++ (str.to.re ":") (re.range "0" "5") (re.range "0" "9"))))) (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (re.opt (re.++ (re.union (str.to.re "a") (str.to.re "A") (str.to.re "p") (str.to.re "P")) ((_ re.loop 0 2) (re.union (str.to.re "m") (str.to.re "M"))))) (str.to.re "\x0a"))))
; ^0(5[012345678]|6[47]){1}(\-)?[^0\D]{1}\d{5}$
(assert (not (str.in.re X (re.++ (str.to.re "0") ((_ re.loop 1 1) (re.union (re.++ (str.to.re "5") (re.union (str.to.re "0") (str.to.re "1") (str.to.re "2") (str.to.re "3") (str.to.re "4") (str.to.re "5") (str.to.re "6") (str.to.re "7") (str.to.re "8"))) (re.++ (str.to.re "6") (re.union (str.to.re "4") (str.to.re "7"))))) (re.opt (str.to.re "-")) ((_ re.loop 1 1) (re.union (str.to.re "0") (re.comp (re.range "0" "9")))) ((_ re.loop 5 5) (re.range "0" "9")) (str.to.re "\x0a")))))
; /User-Agent\x3a\x20Agent\d{5,9}/Hi
(assert (str.in.re X (re.++ (str.to.re "/User-Agent: Agent") ((_ re.loop 5 9) (re.range "0" "9")) (str.to.re "/Hi\x0a"))))
(check-sat)
