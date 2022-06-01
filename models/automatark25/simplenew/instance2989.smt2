(declare-const X String)
; /filename=[a-z0-9]+\u{d}\u{a}/H
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.+ (re.union (re.range "a" "z") (re.range "0" "9"))) (str.to_re "\u{d}\u{a}/H\u{a}")))))
(check-sat)
