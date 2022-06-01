(declare-const X String)
; /filename=[^\n]*\u{2e}gif/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".gif/i\u{a}")))))
; messages.*Windows.*From\u{3A}X-Mailer\u{3a}+\u{2F}cbn\u{2F}earchSchwindler
(assert (str.in_re X (re.++ (str.to_re "messages") (re.* re.allchar) (str.to_re "Windows") (re.* re.allchar) (str.to_re "From:X-Mailer") (re.+ (str.to_re ":")) (str.to_re "/cbn/earchSchwindler\u{a}"))))
; ^#?(([a-fA-F0-9]{3}){1,2})$
(assert (str.in_re X (re.++ (re.opt (str.to_re "#")) ((_ re.loop 1 2) ((_ re.loop 3 3) (re.union (re.range "a" "f") (re.range "A" "F") (re.range "0" "9")))) (str.to_re "\u{a}"))))
(check-sat)
