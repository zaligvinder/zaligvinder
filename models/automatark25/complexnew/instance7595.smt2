(declare-const X String)
; ^[a-zA-Z]{1,2}[0-9][0-9A-Za-z]{0,1} {0,1}[0-9][A-Za-z]{2}$
(assert (str.in.re X (re.++ ((_ re.loop 1 2) (re.union (re.range "a" "z") (re.range "A" "Z"))) (re.range "0" "9") (re.opt (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z"))) (re.opt (str.to.re " ")) (re.range "0" "9") ((_ re.loop 2 2) (re.union (re.range "A" "Z") (re.range "a" "z"))) (str.to.re "\x0a"))))
; .*[Vv][Ii1]agr.*
(assert (not (str.in.re X (re.++ (re.* re.allchar) (re.union (str.to.re "V") (str.to.re "v")) (re.union (str.to.re "I") (str.to.re "i") (str.to.re "1")) (str.to.re "agr") (re.* re.allchar) (str.to.re "\x0a")))))
; User-Agent\x3A\s+www\x2Ewordiq\x2Ecom
(assert (str.in.re X (re.++ (str.to.re "User-Agent:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "www.wordiq.com\x1b\x0a"))))
; ^(\+?\d{1,2}[ -]?)?(\(\+?\d{2,3}\)|\+?\d{2,3})?[ -]?\d{3,4}[ -]?\d{3,4}$
(assert (not (str.in.re X (re.++ (re.opt (re.++ (re.opt (str.to.re "+")) ((_ re.loop 1 2) (re.range "0" "9")) (re.opt (re.union (str.to.re " ") (str.to.re "-"))))) (re.opt (re.union (re.++ (str.to.re "(") (re.opt (str.to.re "+")) ((_ re.loop 2 3) (re.range "0" "9")) (str.to.re ")")) (re.++ (re.opt (str.to.re "+")) ((_ re.loop 2 3) (re.range "0" "9"))))) (re.opt (re.union (str.to.re " ") (str.to.re "-"))) ((_ re.loop 3 4) (re.range "0" "9")) (re.opt (re.union (str.to.re " ") (str.to.re "-"))) ((_ re.loop 3 4) (re.range "0" "9")) (str.to.re "\x0a")))))
; ^[0-9]{2}
(assert (not (str.in.re X (re.++ ((_ re.loop 2 2) (re.range "0" "9")) (str.to.re "\x0a")))))
(check-sat)
