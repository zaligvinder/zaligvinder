(declare-const X String)
; (^N/A$)|(^[-]?(\d+)(\.\d{0,3})?$)|(^[-]?(\d{1,3},(\d{3},)*\d{3}(\.\d{1,3})?|\d{1,3}(\.\d{1,3})?)$)
(assert (str.in.re X (re.union (str.to.re "N/A") (re.++ (re.opt (str.to.re "-")) (re.+ (re.range "0" "9")) (re.opt (re.++ (str.to.re ".") ((_ re.loop 0 3) (re.range "0" "9"))))) (re.++ (str.to.re "\x0a") (re.opt (str.to.re "-")) (re.union (re.++ ((_ re.loop 1 3) (re.range "0" "9")) (str.to.re ",") (re.* (re.++ ((_ re.loop 3 3) (re.range "0" "9")) (str.to.re ","))) ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (re.++ (str.to.re ".") ((_ re.loop 1 3) (re.range "0" "9"))))) (re.++ ((_ re.loop 1 3) (re.range "0" "9")) (re.opt (re.++ (str.to.re ".") ((_ re.loop 1 3) (re.range "0" "9"))))))))))
(check-sat)
