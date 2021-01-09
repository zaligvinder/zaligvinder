(declare-const X String)
; ^[SC]{2}[0-9]{6}$
(assert (str.in.re X (re.++ ((_ re.loop 2 2) (re.union (str.to.re "S") (str.to.re "C"))) ((_ re.loop 6 6) (re.range "0" "9")) (str.to.re "\x0a"))))
; ^(\w+)s?[:]\/\/(\w+)?[.]?(\w+)[.](\w+)$
(assert (not (str.in.re X (re.++ (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (re.opt (str.to.re "s")) (str.to.re "://") (re.opt (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_")))) (re.opt (str.to.re ".")) (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re ".") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "\x0a")))))
; \x7D\x7BSysuptime\x3A\d+\x2Fcommunicatortb
(assert (not (str.in.re X (re.++ (str.to.re "}{Sysuptime:") (re.+ (re.range "0" "9")) (str.to.re "/communicatortb\x0a")))))
; \x2APORT1\x2AWarezX-Mailer\x3ASnake\x2Fbonzibuddy\x2F
(assert (str.in.re X (str.to.re "*PORT1*WarezX-Mailer:\x13Snake/bonzibuddy/\x0a")))
(check-sat)
