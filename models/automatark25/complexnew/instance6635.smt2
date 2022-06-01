(declare-const X String)
; Handyst=ClassStopperHost\u{3A}SpamBlockerUtility
(assert (str.in_re X (str.to_re "Handyst=ClassStopperHost:SpamBlockerUtility\u{a}")))
; messages.*Windows.*From\u{3A}X-Mailer\u{3a}+\u{2F}cbn\u{2F}earchSchwindler
(assert (not (str.in_re X (re.++ (str.to_re "messages") (re.* re.allchar) (str.to_re "Windows") (re.* re.allchar) (str.to_re "From:X-Mailer") (re.+ (str.to_re ":")) (str.to_re "/cbn/earchSchwindler\u{a}")))))
; TPSystemHost\u{3a}\u{7D}\u{7B}User\u{3A}Alert\u{2F}cgi-bin\u{2F}X-Mailer\u{3A}
(assert (str.in_re X (str.to_re "TPSystemHost:}{User:Alert/cgi-bin/X-Mailer:\u{13}\u{a}")))
(check-sat)
