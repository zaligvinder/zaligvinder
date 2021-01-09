(declare-const X String)
; /^\/lists\/\d{20}$/U
(assert (not (str.in.re X (re.++ (str.to.re "//lists/") ((_ re.loop 20 20) (re.range "0" "9")) (str.to.re "/U\x0a")))))
; ("((\\.)|[^\\"])*")
(assert (not (str.in.re X (re.++ (str.to.re "\x0a\x22") (re.* (re.union (re.++ (str.to.re "\x5c") re.allchar) (str.to.re "\x5c") (str.to.re "\x22"))) (str.to.re "\x22")))))
; (^-\d*\.?\d*[1-9]+\d*$)|(^-[1-9]+\d*\.\d*$)
(assert (not (str.in.re X (re.union (re.++ (str.to.re "-") (re.* (re.range "0" "9")) (re.opt (str.to.re ".")) (re.* (re.range "0" "9")) (re.+ (re.range "1" "9")) (re.* (re.range "0" "9"))) (re.++ (str.to.re "\x0a-") (re.+ (re.range "1" "9")) (re.* (re.range "0" "9")) (str.to.re ".") (re.* (re.range "0" "9")))))))
; ^(0|[-]{1}([1-9]{1}[0-9]{0,1}|[1]{1}([0-1]{1}[0-9]{1}|[2]{1}[0-8]{1}))|(\+)?([1-9]{1}[0-9]{0,1}|[1]{1}([0-1]{1}[0-9]{1}|[2]{1}[0-7]{1})))$
(assert (not (str.in.re X (re.++ (re.union (str.to.re "0") (re.++ ((_ re.loop 1 1) (str.to.re "-")) (re.union (re.++ ((_ re.loop 1 1) (re.range "1" "9")) (re.opt (re.range "0" "9"))) (re.++ ((_ re.loop 1 1) (str.to.re "1")) (re.union (re.++ ((_ re.loop 1 1) (re.range "0" "1")) ((_ re.loop 1 1) (re.range "0" "9"))) (re.++ ((_ re.loop 1 1) (str.to.re "2")) ((_ re.loop 1 1) (re.range "0" "8"))))))) (re.++ (re.opt (str.to.re "+")) (re.union (re.++ ((_ re.loop 1 1) (re.range "1" "9")) (re.opt (re.range "0" "9"))) (re.++ ((_ re.loop 1 1) (str.to.re "1")) (re.union (re.++ ((_ re.loop 1 1) (re.range "0" "1")) ((_ re.loop 1 1) (re.range "0" "9"))) (re.++ ((_ re.loop 1 1) (str.to.re "2")) ((_ re.loop 1 1) (re.range "0" "7")))))))) (str.to.re "\x0a")))))
(check-sat)
