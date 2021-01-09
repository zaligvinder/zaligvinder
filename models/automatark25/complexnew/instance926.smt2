(declare-const X String)
; /\.php\?hgfc\=[a-f0-9]+$/U
(assert (not (str.in.re X (re.++ (str.to.re "/.php?hgfc=") (re.+ (re.union (re.range "a" "f") (re.range "0" "9"))) (str.to.re "/U\x0a")))))
; ^(\+27|27)?(\()?0?([7][1-9]|[8][2-4])(\))?( |-|\.|_)?(\d{3})( |-|\.|_)?(\d{4})
(assert (str.in.re X (re.++ (re.opt (re.union (str.to.re "+27") (str.to.re "27"))) (re.opt (str.to.re "(")) (re.opt (str.to.re "0")) (re.union (re.++ (str.to.re "7") (re.range "1" "9")) (re.++ (str.to.re "8") (re.range "2" "4"))) (re.opt (str.to.re ")")) (re.opt (re.union (str.to.re " ") (str.to.re "-") (str.to.re ".") (str.to.re "_"))) ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (re.union (str.to.re " ") (str.to.re "-") (str.to.re ".") (str.to.re "_"))) ((_ re.loop 4 4) (re.range "0" "9")) (str.to.re "\x0a"))))
; /\x2edae([\?\x5c\x2f]|$)/smiU
(assert (not (str.in.re X (re.++ (str.to.re "/.dae") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a")))))
; ^((\d){3})(-)?(\d){2}(-)?(\d){4}(A|B[1-7]?|M|T|C[1-4]|D)$
(assert (str.in.re X (re.++ ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (str.to.re "-")) ((_ re.loop 2 2) (re.range "0" "9")) (re.opt (str.to.re "-")) ((_ re.loop 4 4) (re.range "0" "9")) (re.union (str.to.re "A") (re.++ (str.to.re "B") (re.opt (re.range "1" "7"))) (str.to.re "M") (str.to.re "T") (re.++ (str.to.re "C") (re.range "1" "4")) (str.to.re "D")) (str.to.re "\x0a"))))
(check-sat)
