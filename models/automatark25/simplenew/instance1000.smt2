(declare-const X String)
; ^([^ \u{21}-\u{26}\u{28}-\u{2C}\u{2E}-\u{40}\u{5B}-\u{60}\u{7B}-\u{AC}\u{AE}-\u{BF}\u{F7}\u{FE}]+)$
(assert (not (str.in_re X (re.++ (re.+ (re.union (str.to_re " ") (re.range "!" "&") (re.range "(" ",") (re.range "." "@") (re.range "[" "`") (re.range "{" "\u{ac}") (re.range "\u{ae}" "\u{bf}") (str.to_re "\u{f7}") (str.to_re "\u{fe}"))) (str.to_re "\u{a}")))))
(check-sat)
