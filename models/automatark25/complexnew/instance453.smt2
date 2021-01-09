(declare-const X String)
; ^([0-1])*$
(assert (not (str.in.re X (re.++ (re.* (re.range "0" "1")) (str.to.re "\x0a")))))
; (^[A-Z]{1,2}[0-9]{1,}:{1}[A-Z]{1,2}[0-9]{1,}$)|(^\$(([A-Z])|([a-z])){1,2}([0-9]){1,}:{1}\$(([A-Z])|([a-z])){1,2}([0-9]){1,}$)|(^\$(([A-Z])|([a-z])){1,2}(\$){1}([0-9]){1,}:{1}\$(([A-Z])|([a-z])){1,2}(\$){1}([0-9]){1,}$)
(assert (not (str.in.re X (re.union (re.++ ((_ re.loop 1 2) (re.range "A" "Z")) (re.+ (re.range "0" "9")) ((_ re.loop 1 1) (str.to.re ":")) ((_ re.loop 1 2) (re.range "A" "Z")) (re.+ (re.range "0" "9"))) (re.++ (str.to.re "$") ((_ re.loop 1 2) (re.union (re.range "A" "Z") (re.range "a" "z"))) (re.+ (re.range "0" "9")) ((_ re.loop 1 1) (str.to.re ":")) (str.to.re "$") ((_ re.loop 1 2) (re.union (re.range "A" "Z") (re.range "a" "z"))) (re.+ (re.range "0" "9"))) (re.++ (str.to.re "\x0a$") ((_ re.loop 1 2) (re.union (re.range "A" "Z") (re.range "a" "z"))) ((_ re.loop 1 1) (str.to.re "$")) (re.+ (re.range "0" "9")) ((_ re.loop 1 1) (str.to.re ":")) (str.to.re "$") ((_ re.loop 1 2) (re.union (re.range "A" "Z") (re.range "a" "z"))) ((_ re.loop 1 1) (str.to.re "$")) (re.+ (re.range "0" "9")))))))
; seqepagqfphv\x2fsfdX-Mailer\x3A
(assert (str.in.re X (str.to.re "seqepagqfphv/sfdX-Mailer:\x13\x0a")))
(check-sat)
