(declare-const X String)
; ^\d{5}((\-|\s)?\d{4})?$
(assert (str.in.re X (re.++ ((_ re.loop 5 5) (re.range "0" "9")) (re.opt (re.++ (re.opt (re.union (str.to.re "-") (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) ((_ re.loop 4 4) (re.range "0" "9")))) (str.to.re "\x0a"))))
; Host\x3AHost\x3afhfksjzsfu\x2fahm\.uqsHost\x3Afowclxccdxn\x2fuxwn\.ddy
(assert (not (str.in.re X (str.to.re "Host:Host:fhfksjzsfu/ahm.uqsHost:fowclxccdxn/uxwn.ddy\x0a"))))
; /\x28\x3f\x3d[^)]{300}/
(assert (str.in.re X (re.++ (str.to.re "/(?=") ((_ re.loop 300 300) (re.comp (str.to.re ")"))) (str.to.re "/\x0a"))))
; /^dataget\x7c\d+\x7c\d+\x7C[a-z0-9]+\x2E[a-z]{2,3}\x7C[a-z0-9]+\x7C/
(assert (str.in.re X (re.++ (str.to.re "/dataget|") (re.+ (re.range "0" "9")) (str.to.re "|") (re.+ (re.range "0" "9")) (str.to.re "|") (re.+ (re.union (re.range "a" "z") (re.range "0" "9"))) (str.to.re ".") ((_ re.loop 2 3) (re.range "a" "z")) (str.to.re "|") (re.+ (re.union (re.range "a" "z") (re.range "0" "9"))) (str.to.re "|/\x0a"))))
(check-sat)
