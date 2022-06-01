(declare-const X String)
; /\u{2f}b\u{2f}shoe\u{2f}[0-9]{3,5}$/U
(assert (not (str.in_re X (re.++ (str.to_re "//b/shoe/") ((_ re.loop 3 5) (re.range "0" "9")) (str.to_re "/U\u{a}")))))
; /filename=[^\n]*\u{2e}url/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".url/i\u{a}"))))
(check-sat)
