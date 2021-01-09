(declare-const X String)
; ^\d+((\.|\,)\d+)?$
(assert (str.in.re X (re.++ (re.+ (re.range "0" "9")) (re.opt (re.++ (re.union (str.to.re ".") (str.to.re ",")) (re.+ (re.range "0" "9")))) (str.to.re "\x0a"))))
; ^[^';<>?%!\s]{1,20}$
(assert (not (str.in.re X (re.++ ((_ re.loop 1 20) (re.union (str.to.re "'") (str.to.re ";") (str.to.re "<") (str.to.re ">") (str.to.re "?") (str.to.re "%") (str.to.re "!") (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "\x0a")))))
; (^N/A$)|(^[-]?(\d+)(\.\d{0,3})?$)|(^[-]?(\d{1,3},(\d{3},)*\d{3}(\.\d{1,3})?|\d{1,3}(\.\d{1,3})?)$)
(assert (not (str.in.re X (re.union (str.to.re "N/A") (re.++ (re.opt (str.to.re "-")) (re.+ (re.range "0" "9")) (re.opt (re.++ (str.to.re ".") ((_ re.loop 0 3) (re.range "0" "9"))))) (re.++ (str.to.re "\x0a") (re.opt (str.to.re "-")) (re.union (re.++ ((_ re.loop 1 3) (re.range "0" "9")) (str.to.re ",") (re.* (re.++ ((_ re.loop 3 3) (re.range "0" "9")) (str.to.re ","))) ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (re.++ (str.to.re ".") ((_ re.loop 1 3) (re.range "0" "9"))))) (re.++ ((_ re.loop 1 3) (re.range "0" "9")) (re.opt (re.++ (str.to.re ".") ((_ re.loop 1 3) (re.range "0" "9")))))))))))
(check-sat)
