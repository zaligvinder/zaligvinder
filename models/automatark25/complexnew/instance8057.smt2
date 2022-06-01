(declare-const X String)
; /filename=[^\n]*\u{2e}exe/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".exe/i\u{a}"))))
; /\u{d}\u{a}Host\u{3a}\u{20}[^\u{d}\u{a}\u{2e}]+\u{2e}[^\u{d}\u{a}\u{2e}]+(\u{3a}\d{1,5})?\u{d}\u{a}\u{d}\u{a}$/H
(assert (not (str.in_re X (re.++ (str.to_re "/\u{d}\u{a}Host: ") (re.+ (re.union (str.to_re "\u{d}") (str.to_re "\u{a}") (str.to_re "."))) (str.to_re ".") (re.+ (re.union (str.to_re "\u{d}") (str.to_re "\u{a}") (str.to_re "."))) (re.opt (re.++ (str.to_re ":") ((_ re.loop 1 5) (re.range "0" "9")))) (str.to_re "\u{d}\u{a}\u{d}\u{a}/H\u{a}")))))
(check-sat)
