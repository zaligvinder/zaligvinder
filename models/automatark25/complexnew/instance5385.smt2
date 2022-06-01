(declare-const X String)
; ((\bm_[a-zA-Z\d]*\b)|(\bin_[a-zA-Z\d]*\b)|(\bin _[a-zA-Z\d]*\b))
(assert (str.in_re X (re.++ (re.union (re.++ (str.to_re "m_") (re.* (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9")))) (re.++ (str.to_re "in_") (re.* (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9")))) (re.++ (str.to_re "in _") (re.* (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9"))))) (str.to_re "\u{a}"))))
; [\w-]+@([\w-]+\.)+[\w-]+
(assert (not (str.in_re X (re.++ (re.+ (re.union (str.to_re "-") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "@") (re.+ (re.++ (re.+ (re.union (str.to_re "-") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "."))) (re.+ (re.union (str.to_re "-") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "\u{a}")))))
; AgentCSmtpsidebar\.activeshopper\.comTry2Find
(assert (str.in_re X (str.to_re "AgentCSmtpsidebar.activeshopper.comTry2Find\u{a}")))
(check-sat)
