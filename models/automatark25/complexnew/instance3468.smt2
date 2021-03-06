(declare-const X String)
; ^\D{0,2}[0]{0,3}[1]{0,1}\D{0,2}([2-9])(\d{2})\D{0,2}(\d{3})\D{0,2}(\d{3})\D{0,2}(\d{1})\D{0,2}$
(assert (not (str.in.re X (re.++ ((_ re.loop 0 2) (re.comp (re.range "0" "9"))) ((_ re.loop 0 3) (str.to.re "0")) (re.opt (str.to.re "1")) ((_ re.loop 0 2) (re.comp (re.range "0" "9"))) (re.range "2" "9") ((_ re.loop 2 2) (re.range "0" "9")) ((_ re.loop 0 2) (re.comp (re.range "0" "9"))) ((_ re.loop 3 3) (re.range "0" "9")) ((_ re.loop 0 2) (re.comp (re.range "0" "9"))) ((_ re.loop 3 3) (re.range "0" "9")) ((_ re.loop 0 2) (re.comp (re.range "0" "9"))) ((_ re.loop 1 1) (re.range "0" "9")) ((_ re.loop 0 2) (re.comp (re.range "0" "9"))) (str.to.re "\x0a")))))
; ^\({0,1}0(2|3|7|8)\){0,1}(\ |-){0,1}[0-9]{4}(\ |-){0,1}[0-9]{4}$
(assert (not (str.in.re X (re.++ (re.opt (str.to.re "(")) (str.to.re "0") (re.union (str.to.re "2") (str.to.re "3") (str.to.re "7") (str.to.re "8")) (re.opt (str.to.re ")")) (re.opt (re.union (str.to.re " ") (str.to.re "-"))) ((_ re.loop 4 4) (re.range "0" "9")) (re.opt (re.union (str.to.re " ") (str.to.re "-"))) ((_ re.loop 4 4) (re.range "0" "9")) (str.to.re "\x0a")))))
(check-sat)
