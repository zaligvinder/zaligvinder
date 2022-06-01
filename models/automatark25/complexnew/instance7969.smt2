(declare-const X String)
; \u{2F}toolbar\u{2F}\d+www\u{2E}ricercadoppia\u{2E}comPALTALKSubject\u{3A}
(assert (str.in_re X (re.++ (str.to_re "/toolbar/") (re.+ (re.range "0" "9")) (str.to_re "www.ricercadoppia.comPALTALKSubject:\u{a}"))))
; /\u{28}\u{3f}\u{3d}[^)]{300}/
(assert (not (str.in_re X (re.++ (str.to_re "/(?=") ((_ re.loop 300 300) (re.comp (str.to_re ")"))) (str.to_re "/\u{a}")))))
(check-sat)
