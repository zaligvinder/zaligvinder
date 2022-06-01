(declare-const X String)
; (([A-Za-z0-9_\\-]+\\.?)*)[A-Za-z0-9_\\-]+\\.[A-Za-z0-9_\\-]{2,6}
(assert (str.in_re X (re.++ (re.* (re.++ (re.+ (re.union (re.range "A" "Z") (re.range "a" "z") (re.range "0" "9") (str.to_re "_") (str.to_re "\u{5c}") (str.to_re "-"))) (str.to_re "\u{5c}") (re.opt re.allchar))) (re.+ (re.union (re.range "A" "Z") (re.range "a" "z") (re.range "0" "9") (str.to_re "_") (str.to_re "\u{5c}") (str.to_re "-"))) (str.to_re "\u{5c}") re.allchar ((_ re.loop 2 6) (re.union (re.range "A" "Z") (re.range "a" "z") (re.range "0" "9") (str.to_re "_") (str.to_re "\u{5c}") (str.to_re "-"))) (str.to_re "\u{a}"))))
; linkautomatici\u{2E}comAID\u{2F}YourUser-Agent\u{3A}toBasicwww\u{2E}webcruiser\u{2E}cc
(assert (str.in_re X (str.to_re "linkautomatici.comAID/YourUser-Agent:toBasicwww.webcruiser.cc\u{a}")))
(check-sat)
