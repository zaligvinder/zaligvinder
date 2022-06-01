(declare-const X String)
; /filename=[^\n]*\u{2e}m4b/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".m4b/i\u{a}"))))
; ^1+0+$
(assert (str.in_re X (re.++ (re.+ (str.to_re "1")) (re.+ (str.to_re "0")) (str.to_re "\u{a}"))))
(check-sat)
