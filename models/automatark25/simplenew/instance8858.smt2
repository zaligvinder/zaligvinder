(declare-const X String)
; ^[^\"]+$
(assert (str.in_re X (re.++ (re.+ (re.comp (str.to_re "\u{22}"))) (str.to_re "\u{a}"))))
(check-sat)
