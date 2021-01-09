(declare-const X String)
; Host\x3a\s+ServerToolbar
(assert (not (str.in.re X (re.++ (str.to.re "Host:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "ServerToolbar\x0a")))))
; ^(\+?\d{1,2}[ -]?)?(\(\+?\d{2,3}\)|\+?\d{2,3})?[ -]?\d{3,4}[ -]?\d{3,4}$
(assert (str.in.re X (re.++ (re.opt (re.++ (re.opt (str.to.re "+")) ((_ re.loop 1 2) (re.range "0" "9")) (re.opt (re.union (str.to.re " ") (str.to.re "-"))))) (re.opt (re.union (re.++ (str.to.re "(") (re.opt (str.to.re "+")) ((_ re.loop 2 3) (re.range "0" "9")) (str.to.re ")")) (re.++ (re.opt (str.to.re "+")) ((_ re.loop 2 3) (re.range "0" "9"))))) (re.opt (re.union (str.to.re " ") (str.to.re "-"))) ((_ re.loop 3 4) (re.range "0" "9")) (re.opt (re.union (str.to.re " ") (str.to.re "-"))) ((_ re.loop 3 4) (re.range "0" "9")) (str.to.re "\x0a"))))
; [0-9]{3}P[A-Z][0-9]{7}[0-9X]
(assert (str.in.re X (re.++ ((_ re.loop 3 3) (re.range "0" "9")) (str.to.re "P") (re.range "A" "Z") ((_ re.loop 7 7) (re.range "0" "9")) (re.union (re.range "0" "9") (str.to.re "X")) (str.to.re "\x0a"))))
; \w*
(assert (str.in.re X (re.++ (re.* (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "\x0a"))))
(check-sat)
