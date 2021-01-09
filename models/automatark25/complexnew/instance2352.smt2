(declare-const X String)
; ^[$]?[0-9]*(\.)?[0-9]?[0-9]?$
(assert (not (str.in.re X (re.++ (re.opt (str.to.re "$")) (re.* (re.range "0" "9")) (re.opt (str.to.re ".")) (re.opt (re.range "0" "9")) (re.opt (re.range "0" "9")) (str.to.re "\x0a")))))
; /filename=[^\n]*\x2edocm/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".docm/i\x0a")))))
; ^([a-zA-Z0-9]{6,18}?)$
(assert (not (str.in.re X (re.++ ((_ re.loop 6 18) (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9"))) (str.to.re "\x0a")))))
; ^(\+?\d{1,2}[ -]?)?(\(\+?\d{2,3}\)|\+?\d{2,3})?[ -]?\d{3,4}[ -]?\d{3,4}$
(assert (not (str.in.re X (re.++ (re.opt (re.++ (re.opt (str.to.re "+")) ((_ re.loop 1 2) (re.range "0" "9")) (re.opt (re.union (str.to.re " ") (str.to.re "-"))))) (re.opt (re.union (re.++ (str.to.re "(") (re.opt (str.to.re "+")) ((_ re.loop 2 3) (re.range "0" "9")) (str.to.re ")")) (re.++ (re.opt (str.to.re "+")) ((_ re.loop 2 3) (re.range "0" "9"))))) (re.opt (re.union (str.to.re " ") (str.to.re "-"))) ((_ re.loop 3 4) (re.range "0" "9")) (re.opt (re.union (str.to.re " ") (str.to.re "-"))) ((_ re.loop 3 4) (re.range "0" "9")) (str.to.re "\x0a")))))
(check-sat)
