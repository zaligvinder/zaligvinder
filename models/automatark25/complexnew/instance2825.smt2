(declare-const X String)
; ^[+]?100(\.0{1,2})?%?$|^[+]?\d{1,2}(\.\d{1,2})?%?$
(assert (not (str.in.re X (re.union (re.++ (re.opt (str.to.re "+")) (str.to.re "100") (re.opt (re.++ (str.to.re ".") ((_ re.loop 1 2) (str.to.re "0")))) (re.opt (str.to.re "%"))) (re.++ (re.opt (str.to.re "+")) ((_ re.loop 1 2) (re.range "0" "9")) (re.opt (re.++ (str.to.re ".") ((_ re.loop 1 2) (re.range "0" "9")))) (re.opt (str.to.re "%")) (str.to.re "\x0a"))))))
; ^[+-]?[0-9]*\.?([0-9]?)*
(assert (not (str.in.re X (re.++ (re.opt (re.union (str.to.re "+") (str.to.re "-"))) (re.* (re.range "0" "9")) (re.opt (str.to.re ".")) (re.* (re.opt (re.range "0" "9"))) (str.to.re "\x0a")))))
; ((\+351|00351|351)?)(2\d{1}|(9(3|6|2|1)))\d{7}
(assert (str.in.re X (re.++ (re.opt (re.union (str.to.re "+351") (str.to.re "00351") (str.to.re "351"))) (re.union (re.++ (str.to.re "2") ((_ re.loop 1 1) (re.range "0" "9"))) (re.++ (str.to.re "9") (re.union (str.to.re "3") (str.to.re "6") (str.to.re "2") (str.to.re "1")))) ((_ re.loop 7 7) (re.range "0" "9")) (str.to.re "\x0a"))))
; /^\x2frouji.txt$/mU
(assert (not (str.in.re X (re.++ (str.to.re "//rouji") re.allchar (str.to.re "txt/mU\x0a")))))
; ^(([0]?[1-9]|1[0-2])(:)([0-5][0-9]))$
(assert (str.in.re X (re.++ (str.to.re "\x0a") (re.union (re.++ (re.opt (str.to.re "0")) (re.range "1" "9")) (re.++ (str.to.re "1") (re.range "0" "2"))) (str.to.re ":") (re.range "0" "5") (re.range "0" "9"))))
(check-sat)
