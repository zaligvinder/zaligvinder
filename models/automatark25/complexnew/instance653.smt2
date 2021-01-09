(declare-const X String)
; /\x2edcr([\?\x5c\x2f]|$)/smiU
(assert (not (str.in.re X (re.++ (str.to.re "/.dcr") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a")))))
; ^(([0-2])?([0-9]))$
(assert (str.in.re X (re.++ (str.to.re "\x0a") (re.opt (re.range "0" "2")) (re.range "0" "9"))))
; ^([A-Z]{2}[9]{3}|[A-Z]{3}[9]{2}|[A-Z]{4}[9]{1}|[A-Z]{5})[0-9]{6}([A-Z]{1}[9]{1}|[A-Z]{2})[A-Z0,9]{3}$
(assert (not (str.in.re X (re.++ (re.union (re.++ ((_ re.loop 2 2) (re.range "A" "Z")) ((_ re.loop 3 3) (str.to.re "9"))) (re.++ ((_ re.loop 3 3) (re.range "A" "Z")) ((_ re.loop 2 2) (str.to.re "9"))) (re.++ ((_ re.loop 4 4) (re.range "A" "Z")) ((_ re.loop 1 1) (str.to.re "9"))) ((_ re.loop 5 5) (re.range "A" "Z"))) ((_ re.loop 6 6) (re.range "0" "9")) (re.union (re.++ ((_ re.loop 1 1) (re.range "A" "Z")) ((_ re.loop 1 1) (str.to.re "9"))) ((_ re.loop 2 2) (re.range "A" "Z"))) ((_ re.loop 3 3) (re.union (re.range "A" "Z") (str.to.re "0") (str.to.re ",") (str.to.re "9"))) (str.to.re "\x0a")))))
; ([^a-zA-Z0-9])
(assert (not (str.in.re X (re.++ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9")) (str.to.re "\x0a")))))
; /ID3\x03\x00.{5}([TW][A-Z]{3}|COMM)/smi
(assert (not (str.in.re X (re.++ (str.to.re "/ID3\x03\x00") ((_ re.loop 5 5) re.allchar) (re.union (re.++ (re.union (str.to.re "T") (str.to.re "W")) ((_ re.loop 3 3) (re.range "A" "Z"))) (str.to.re "COMM")) (str.to.re "/smi\x0a")))))
(check-sat)
