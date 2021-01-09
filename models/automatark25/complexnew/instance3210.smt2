(declare-const X String)
; ^0[23489]{1}(\-)?[^0\D]{1}\d{6}$
(assert (not (str.in.re X (re.++ (str.to.re "0") ((_ re.loop 1 1) (re.union (str.to.re "2") (str.to.re "3") (str.to.re "4") (str.to.re "8") (str.to.re "9"))) (re.opt (str.to.re "-")) ((_ re.loop 1 1) (re.union (str.to.re "0") (re.comp (re.range "0" "9")))) ((_ re.loop 6 6) (re.range "0" "9")) (str.to.re "\x0a")))))
; ^([0-9a-fA-F]{4}|0)(\:([0-9a-fA-F]{4}|0)){7}$
(assert (str.in.re X (re.++ (re.union ((_ re.loop 4 4) (re.union (re.range "0" "9") (re.range "a" "f") (re.range "A" "F"))) (str.to.re "0")) ((_ re.loop 7 7) (re.++ (str.to.re ":") (re.union ((_ re.loop 4 4) (re.union (re.range "0" "9") (re.range "a" "f") (re.range "A" "F"))) (str.to.re "0")))) (str.to.re "\x0a"))))
; /\/3001[0-9A-F]{262,304}/
(assert (not (str.in.re X (re.++ (str.to.re "//3001") ((_ re.loop 262 304) (re.union (re.range "0" "9") (re.range "A" "F"))) (str.to.re "/\x0a")))))
; ^([\w\.\-]+)@([\w\-]+)((\.(\w){2,3})+)$
(assert (not (str.in.re X (re.++ (re.+ (re.union (str.to.re ".") (str.to.re "-") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "@") (re.+ (re.union (str.to.re "-") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (re.+ (re.++ (str.to.re ".") ((_ re.loop 2 3) (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))))) (str.to.re "\x0a")))))
; ^[\w]{3}(p|P|c|C|h|H|f|F|a|A|t|T|b|B|l|L|j|J|g|G)[\w][\d]{4}[\w]$
(assert (not (str.in.re X (re.++ ((_ re.loop 3 3) (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (re.union (str.to.re "p") (str.to.re "P") (str.to.re "c") (str.to.re "C") (str.to.re "h") (str.to.re "H") (str.to.re "f") (str.to.re "F") (str.to.re "a") (str.to.re "A") (str.to.re "t") (str.to.re "T") (str.to.re "b") (str.to.re "B") (str.to.re "l") (str.to.re "L") (str.to.re "j") (str.to.re "J") (str.to.re "g") (str.to.re "G")) (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_")) ((_ re.loop 4 4) (re.range "0" "9")) (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_")) (str.to.re "\x0a")))))
(check-sat)
