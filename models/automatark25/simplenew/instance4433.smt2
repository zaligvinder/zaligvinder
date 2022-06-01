(declare-const X String)
; /Host\u{3a}[^\n]+\u{3a}\d+\u{d}\u{a}/
(assert (not (str.in_re X (re.++ (str.to_re "/Host:") (re.+ (re.comp (str.to_re "\u{a}"))) (str.to_re ":") (re.+ (re.range "0" "9")) (str.to_re "\u{d}\u{a}/\u{a}")))))
(check-sat)
