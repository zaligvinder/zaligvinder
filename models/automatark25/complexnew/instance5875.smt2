(declare-const X String)
; ^[a-zA-Z]([a-zA-Z0-9])*([\.][a-zA-Z]([a-zA-Z0-9])*)*$
(assert (not (str.in_re X (re.++ (re.union (re.range "a" "z") (re.range "A" "Z")) (re.* (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9"))) (re.* (re.++ (str.to_re ".") (re.union (re.range "a" "z") (re.range "A" "Z")) (re.* (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9"))))) (str.to_re "\u{a}")))))
; (^\b\d+-\d+$\b)|(^\b\d+$\b)
(assert (not (str.in_re X (re.union (re.++ (re.+ (re.range "0" "9")) (str.to_re "-") (re.+ (re.range "0" "9"))) (re.++ (re.+ (re.range "0" "9")) (str.to_re "\u{a}"))))))
; eveocczmthmmq\u{2f}omzl\d+Host\u{3A}ulmxct\u{2f}mqoyc
(assert (not (str.in_re X (re.++ (str.to_re "eveocczmthmmq/omzl") (re.+ (re.range "0" "9")) (str.to_re "Host:ulmxct/mqoyc\u{a}")))))
(check-sat)
