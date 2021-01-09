(declare-const X String)
; /filename=[^\n]*\x2elzh/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".lzh/i\x0a"))))
; (\+1|\+|1)|([^0-9])
(assert (str.in.re X (re.union (re.++ (re.range "0" "9") (str.to.re "\x0a")) (str.to.re "+1") (str.to.re "+") (str.to.re "1"))))
; <\?xml.*</note>
(assert (str.in.re X (re.++ (str.to.re "<?xml") (re.* re.allchar) (str.to.re "</note>\x0a"))))
; ^(([1-9])|(0[1-9])|(1[0-2]))\/(([0-9])|([0-2][0-9])|(3[0-1]))\/(([0-9][0-9])|([1-2][0,9][0-9][0-9]))$
(assert (not (str.in.re X (re.++ (re.union (re.range "1" "9") (re.++ (str.to.re "0") (re.range "1" "9")) (re.++ (str.to.re "1") (re.range "0" "2"))) (str.to.re "/") (re.union (re.range "0" "9") (re.++ (re.range "0" "2") (re.range "0" "9")) (re.++ (str.to.re "3") (re.range "0" "1"))) (str.to.re "/") (re.union (re.++ (re.range "0" "9") (re.range "0" "9")) (re.++ (re.range "1" "2") (re.union (str.to.re "0") (str.to.re ",") (str.to.re "9")) (re.range "0" "9") (re.range "0" "9"))) (str.to.re "\x0a")))))
; ^((((0?[13578])|(1[02]))[\/|\-]?((0?[1-9]|[0-2][0-9])|(3[01])))|(((0?[469])|(11))[\/|\-]?((0?[1-9]|[0-2][0-9])|(30)))|(0?[2][\/\-]?(0?[1-9]|[0-2][0-9])))[\/\-]?\d{2,4}$
(assert (str.in.re X (re.++ (re.union (re.++ (re.union (re.++ (re.opt (str.to.re "0")) (re.union (str.to.re "1") (str.to.re "3") (str.to.re "5") (str.to.re "7") (str.to.re "8"))) (re.++ (str.to.re "1") (re.union (str.to.re "0") (str.to.re "2")))) (re.opt (re.union (str.to.re "/") (str.to.re "|") (str.to.re "-"))) (re.union (re.++ (str.to.re "3") (re.union (str.to.re "0") (str.to.re "1"))) (re.++ (re.opt (str.to.re "0")) (re.range "1" "9")) (re.++ (re.range "0" "2") (re.range "0" "9")))) (re.++ (re.union (re.++ (re.opt (str.to.re "0")) (re.union (str.to.re "4") (str.to.re "6") (str.to.re "9"))) (str.to.re "11")) (re.opt (re.union (str.to.re "/") (str.to.re "|") (str.to.re "-"))) (re.union (str.to.re "30") (re.++ (re.opt (str.to.re "0")) (re.range "1" "9")) (re.++ (re.range "0" "2") (re.range "0" "9")))) (re.++ (re.opt (str.to.re "0")) (str.to.re "2") (re.opt (re.union (str.to.re "/") (str.to.re "-"))) (re.union (re.++ (re.opt (str.to.re "0")) (re.range "1" "9")) (re.++ (re.range "0" "2") (re.range "0" "9"))))) (re.opt (re.union (str.to.re "/") (str.to.re "-"))) ((_ re.loop 2 4) (re.range "0" "9")) (str.to.re "\x0a"))))
(check-sat)
