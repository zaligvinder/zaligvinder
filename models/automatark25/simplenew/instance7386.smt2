(declare-const X String)
; (^(((\d)|(\d\d)|(\d\d\d))(\xA0|\x20))*((\d)|(\d\d)|(\d\d\d))([,.]\d*)?$)
(assert (str.in.re X (re.++ (str.to.re "\x0a") (re.* (re.++ (re.union (re.range "0" "9") (re.++ (re.range "0" "9") (re.range "0" "9")) (re.++ (re.range "0" "9") (re.range "0" "9") (re.range "0" "9"))) (re.union (str.to.re "\xa0") (str.to.re " ")))) (re.union (re.range "0" "9") (re.++ (re.range "0" "9") (re.range "0" "9")) (re.++ (re.range "0" "9") (re.range "0" "9") (re.range "0" "9"))) (re.opt (re.++ (re.union (str.to.re ",") (str.to.re ".")) (re.* (re.range "0" "9")))))))
(check-sat)
