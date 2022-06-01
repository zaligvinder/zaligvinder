(declare-const X String)
; \.exe\s+ZC-Bridge\s+TPSystemHost\u{3A}Host\u{3a}
(assert (str.in_re X (re.++ (str.to_re ".exe") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "ZC-Bridge") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "TPSystemHost:Host:\u{a}"))))
; ContactHost\u{3a}Host\u{3A}FloodedFictionalUser-Agent\u{3A}Host\u{3a}
(assert (str.in_re X (str.to_re "ContactHost:Host:FloodedFictionalUser-Agent:Host:\u{a}")))
; ^[-+]?\d+(\.\d+)?$
(assert (str.in_re X (re.++ (re.opt (re.union (str.to_re "-") (str.to_re "+"))) (re.+ (re.range "0" "9")) (re.opt (re.++ (str.to_re ".") (re.+ (re.range "0" "9")))) (str.to_re "\u{a}"))))
; ^[-]?[0-9]*\.?[0-9]?[0-9]?[0-9]?[0-9]?
(assert (str.in_re X (re.++ (re.opt (str.to_re "-")) (re.* (re.range "0" "9")) (re.opt (str.to_re ".")) (re.opt (re.range "0" "9")) (re.opt (re.range "0" "9")) (re.opt (re.range "0" "9")) (re.opt (re.range "0" "9")) (str.to_re "\u{a}"))))
(check-sat)
