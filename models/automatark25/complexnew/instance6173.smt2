(declare-const X String)
; /\/DES\d{9}O\d{4,5}\x2ejsp/Ui
(assert (not (str.in.re X (re.++ (str.to.re "//DES") ((_ re.loop 9 9) (re.range "0" "9")) (str.to.re "O") ((_ re.loop 4 5) (re.range "0" "9")) (str.to.re ".jsp/Ui\x0a")))))
; /filename=[^\n]*\x2emp4/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".mp4/i\x0a")))))
; ^\d{5}(-\d{4})?$
(assert (not (str.in.re X (re.++ ((_ re.loop 5 5) (re.range "0" "9")) (re.opt (re.++ (str.to.re "-") ((_ re.loop 4 4) (re.range "0" "9")))) (str.to.re "\x0a")))))
; </?[a-z][a-z0-9]*[^<>]*>
(assert (str.in.re X (re.++ (str.to.re "<") (re.opt (str.to.re "/")) (re.range "a" "z") (re.* (re.union (re.range "a" "z") (re.range "0" "9"))) (re.* (re.union (str.to.re "<") (str.to.re ">"))) (str.to.re ">\x0a"))))
; ^([A-Z]{1,2}[0-9]{1,2}|[A-Z]{3}|[A-Z]{1,2}[0-9][A-Z])( |-)[0-9][A-Z]{2}
(assert (not (str.in.re X (re.++ (re.union (re.++ ((_ re.loop 1 2) (re.range "A" "Z")) ((_ re.loop 1 2) (re.range "0" "9"))) ((_ re.loop 3 3) (re.range "A" "Z")) (re.++ ((_ re.loop 1 2) (re.range "A" "Z")) (re.range "0" "9") (re.range "A" "Z"))) (re.union (str.to.re " ") (str.to.re "-")) (re.range "0" "9") ((_ re.loop 2 2) (re.range "A" "Z")) (str.to.re "\x0a")))))
(check-sat)
