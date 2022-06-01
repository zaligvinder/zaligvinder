(declare-const X String)
; /filename=[^\n]*\u{2e}class/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".class/i\u{a}")))))
; body=\u{25}21\u{25}21\u{25}21Optix\s+Host\u{3a}
(assert (not (str.in_re X (re.++ (str.to_re "body=%21%21%21Optix\u{13}") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Host:\u{a}")))))
(check-sat)
