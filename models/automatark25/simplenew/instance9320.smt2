(declare-const X String)
; messages.*Windows.*From\x3AX-Mailer\x3a+\x2Fcbn\x2FearchSchwindler
(assert (not (str.in.re X (re.++ (str.to.re "messages") (re.* re.allchar) (str.to.re "Windows") (re.* re.allchar) (str.to.re "From:X-Mailer") (re.+ (str.to.re ":")) (str.to.re "/cbn/earchSchwindler\x0a")))))
(check-sat)
