(declare-const X String)
; ^[^\"]+$
(assert (not (str.in_re X (re.++ (re.+ (re.comp (str.to_re "\u{22}"))) (str.to_re "\u{a}")))))
; ^[0-9a-zA-z]{3}$
(assert (not (str.in_re X (re.++ ((_ re.loop 3 3) (re.union (re.range "0" "9") (re.range "a" "z") (re.range "A" "z"))) (str.to_re "\u{a}")))))
; Points\d+Host\u{3a}\stoBasicwww\u{2E}webcruiser\u{2E}cc
(assert (not (str.in_re X (re.++ (str.to_re "Points") (re.+ (re.range "0" "9")) (str.to_re "Host:") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "toBasicwww.webcruiser.cc\u{a}")))))
; searchnugget.*Referer\u{3A}\s+User-Agent\u{3A}Host\u{3A}
(assert (str.in_re X (re.++ (str.to_re "searchnugget\u{13}") (re.* re.allchar) (str.to_re "Referer:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "User-Agent:Host:\u{a}"))))
(check-sat)
