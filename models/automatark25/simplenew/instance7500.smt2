(declare-const X String)
; /User-Agent\u{3a}\u{20}[^\u{d}\u{a}]*?\u{3b}U\u{3a}[^\u{d}\u{a}]{1,68}\u{3b}rv\u{3a}/H
(assert (not (str.in_re X (re.++ (str.to_re "/User-Agent: ") (re.* (re.union (str.to_re "\u{d}") (str.to_re "\u{a}"))) (str.to_re ";U:") ((_ re.loop 1 68) (re.union (str.to_re "\u{d}") (str.to_re "\u{a}"))) (str.to_re ";rv:/H\u{a}")))))
(check-sat)
