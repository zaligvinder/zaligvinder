(declare-const X String)
; <!--.*?-->
(assert (str.in.re X (re.++ (str.to.re "<!--") (re.* re.allchar) (str.to.re "-->\x0a"))))
; /^\x2frouji.txt$/mU
(assert (str.in.re X (re.++ (str.to.re "//rouji") re.allchar (str.to.re "txt/mU\x0a"))))
; (^0?[1-9]|^1[0-2])\/(0?[1-9]|[1-2][0-9]|3[0-1])\/(19|20)?[0-9][0-9](\s(((0?[0-9]|1[0-9]|2[0-3]):[0-5][0-9](:[0-5][0-9])?)|((0?[0-9]|1[0-2]):[0-5][0-9](:[0-5][0-9])?\s(AM|PM))))?$
(assert (not (str.in.re X (re.++ (re.union (re.++ (re.opt (str.to.re "0")) (re.range "1" "9")) (re.++ (str.to.re "1") (re.range "0" "2"))) (str.to.re "/") (re.union (re.++ (re.opt (str.to.re "0")) (re.range "1" "9")) (re.++ (re.range "1" "2") (re.range "0" "9")) (re.++ (str.to.re "3") (re.range "0" "1"))) (str.to.re "/") (re.opt (re.union (str.to.re "19") (str.to.re "20"))) (re.range "0" "9") (re.range "0" "9") (re.opt (re.++ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (re.union (re.++ (re.union (re.++ (re.opt (str.to.re "0")) (re.range "0" "9")) (re.++ (str.to.re "1") (re.range "0" "9")) (re.++ (str.to.re "2") (re.range "0" "3"))) (str.to.re ":") (re.range "0" "5") (re.range "0" "9") (re.opt (re.++ (str.to.re ":") (re.range "0" "5") (re.range "0" "9")))) (re.++ (re.union (re.++ (re.opt (str.to.re "0")) (re.range "0" "9")) (re.++ (str.to.re "1") (re.range "0" "2"))) (str.to.re ":") (re.range "0" "5") (re.range "0" "9") (re.opt (re.++ (str.to.re ":") (re.range "0" "5") (re.range "0" "9"))) (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (re.union (str.to.re "AM") (str.to.re "PM")))))) (str.to.re "\x0a")))))
; ^(\+|-)?(\d\.\d{1,6}|[1-8]\d\.\d{1,6}|90\.0{1,6})$
(assert (str.in.re X (re.++ (re.opt (re.union (str.to.re "+") (str.to.re "-"))) (re.union (re.++ (re.range "0" "9") (str.to.re ".") ((_ re.loop 1 6) (re.range "0" "9"))) (re.++ (re.range "1" "8") (re.range "0" "9") (str.to.re ".") ((_ re.loop 1 6) (re.range "0" "9"))) (re.++ (str.to.re "90.") ((_ re.loop 1 6) (str.to.re "0")))) (str.to.re "\x0a"))))
; \x28BDLL\x29Googledll\x3F
(assert (not (str.in.re X (str.to.re "(BDLL)\x13Googledll?\x0a"))))
(check-sat)
