(declare-const X String)
; /filename=[^\n]*\u{2e}addin/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".addin/i\u{a}"))))
; ^(([A-Z])([a-zA-Z0-9]+)?)(\:)(\d+)$
(assert (not (str.in_re X (re.++ (str.to_re ":") (re.+ (re.range "0" "9")) (str.to_re "\u{a}") (re.range "A" "Z") (re.opt (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9"))))))))
(check-sat)
