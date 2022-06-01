(declare-const X String)
; messages.*Windows.*From\u{3A}X-Mailer\u{3a}+\u{2F}cbn\u{2F}earchSchwindler
(assert (not (str.in_re X (re.++ (str.to_re "messages") (re.* re.allchar) (str.to_re "Windows") (re.* re.allchar) (str.to_re "From:X-Mailer") (re.+ (str.to_re ":")) (str.to_re "/cbn/earchSchwindler\u{a}")))))
(check-sat)
