(declare-const X String)
; /filename=[^\n]*\x2egif/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".gif/i\x0a")))))
; messages.*Windows.*From\x3AX-Mailer\x3a+\x2Fcbn\x2FearchSchwindler
(assert (str.in.re X (re.++ (str.to.re "messages") (re.* re.allchar) (str.to.re "Windows") (re.* re.allchar) (str.to.re "From:X-Mailer") (re.+ (str.to.re ":")) (str.to.re "/cbn/earchSchwindler\x0a"))))
; ^#?(([a-fA-F0-9]{3}){1,2})$
(assert (str.in.re X (re.++ (re.opt (str.to.re "#")) ((_ re.loop 1 2) ((_ re.loop 3 3) (re.union (re.range "a" "f") (re.range "A" "F") (re.range "0" "9")))) (str.to.re "\x0a"))))
(check-sat)
