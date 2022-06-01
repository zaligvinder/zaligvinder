(declare-const X String)
; A-311Host\u{3A}lnzzlnbk\u{2f}pkrm\.finSubject\u{3a}
(assert (not (str.in_re X (str.to_re "A-311Host:lnzzlnbk/pkrm.finSubject:\u{a}"))))
; ^([^:])+\\.([^:])+$
(assert (not (str.in_re X (re.++ (re.+ (re.comp (str.to_re ":"))) (str.to_re "\u{5c}") re.allchar (re.+ (re.comp (str.to_re ":"))) (str.to_re "\u{a}")))))
(check-sat)
