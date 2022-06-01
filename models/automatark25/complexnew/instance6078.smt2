(declare-const X String)
; ^[a-zA-Z]\:\\.*|^\\\\.*
(assert (not (str.in_re X (re.union (re.++ (re.union (re.range "a" "z") (re.range "A" "Z")) (str.to_re ":\u{5c}") (re.* re.allchar)) (re.++ (str.to_re "\u{5c}\u{5c}") (re.* re.allchar) (str.to_re "\u{a}"))))))
; ^[A-Z].*$
(assert (not (str.in_re X (re.++ (re.range "A" "Z") (re.* re.allchar) (str.to_re "\u{a}")))))
; ShadowNet\s+AID\u{2F}User-Agent\u{3A}Fen\u{ea}treEye\u{2F}dss\u{2F}cc\.2_0_0\.
(assert (str.in_re X (re.++ (str.to_re "ShadowNet") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "AID/User-Agent:Fen\u{ea}treEye/dss/cc.2_0_0.\u{a}"))))
; ^(([0-9]{3})[-]?)*[0-9]{6,7}$
(assert (str.in_re X (re.++ (re.* (re.++ ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (str.to_re "-")))) ((_ re.loop 6 7) (re.range "0" "9")) (str.to_re "\u{a}"))))
(check-sat)
