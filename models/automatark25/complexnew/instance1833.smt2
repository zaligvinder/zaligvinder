(declare-const X String)
; ^((\d{5}-\d{4})|(\d{5})|([AaBbCcEeGgHhJjKkLlMmNnPpRrSsTtVvXxYy]\d[A-Za-z]\s?\d[A-Za-z]\d))$
(assert (str.in.re X (re.++ (re.union (re.++ ((_ re.loop 5 5) (re.range "0" "9")) (str.to.re "-") ((_ re.loop 4 4) (re.range "0" "9"))) ((_ re.loop 5 5) (re.range "0" "9")) (re.++ (re.union (str.to.re "A") (str.to.re "a") (str.to.re "B") (str.to.re "b") (str.to.re "C") (str.to.re "c") (str.to.re "E") (str.to.re "e") (str.to.re "G") (str.to.re "g") (str.to.re "H") (str.to.re "h") (str.to.re "J") (str.to.re "j") (str.to.re "K") (str.to.re "k") (str.to.re "L") (str.to.re "l") (str.to.re "M") (str.to.re "m") (str.to.re "N") (str.to.re "n") (str.to.re "P") (str.to.re "p") (str.to.re "R") (str.to.re "r") (str.to.re "S") (str.to.re "s") (str.to.re "T") (str.to.re "t") (str.to.re "V") (str.to.re "v") (str.to.re "X") (str.to.re "x") (str.to.re "Y") (str.to.re "y")) (re.range "0" "9") (re.union (re.range "A" "Z") (re.range "a" "z")) (re.opt (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (re.range "0" "9") (re.union (re.range "A" "Z") (re.range "a" "z")) (re.range "0" "9"))) (str.to.re "\x0a"))))
; /\x2ecis([\?\x5c\x2f]|$)/smiU
(assert (not (str.in.re X (re.++ (str.to.re "/.cis") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a")))))
; \d{5}\-\d{3}
(assert (not (str.in.re X (re.++ ((_ re.loop 5 5) (re.range "0" "9")) (str.to.re "-") ((_ re.loop 3 3) (re.range "0" "9")) (str.to.re "\x0a")))))
; (^.+\|+[A-Za-z])
(assert (not (str.in.re X (re.++ (str.to.re "\x0a") (re.+ re.allchar) (re.+ (str.to.re "|")) (re.union (re.range "A" "Z") (re.range "a" "z"))))))
; ^\d{2}(\x2e)(\d{3})(-\d{3})?$
(assert (str.in.re X (re.++ ((_ re.loop 2 2) (re.range "0" "9")) (str.to.re ".") ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (re.++ (str.to.re "-") ((_ re.loop 3 3) (re.range "0" "9")))) (str.to.re "\x0a"))))
(check-sat)
