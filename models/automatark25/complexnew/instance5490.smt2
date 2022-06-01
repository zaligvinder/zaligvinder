(declare-const X String)
; /User-Agent\u{3A}\s+?mus[\u{d}\u{a}]/iH
(assert (not (str.in_re X (re.++ (str.to_re "/User-Agent:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "mus") (re.union (str.to_re "\u{d}") (str.to_re "\u{a}")) (str.to_re "/iH\u{a}")))))
; /filename=[^\n]*\u{2e}xslt/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".xslt/i\u{a}"))))
; \d+([\.|\,][0]+?[1-9]+)?
(assert (str.in_re X (re.++ (re.+ (re.range "0" "9")) (re.opt (re.++ (re.union (str.to_re ".") (str.to_re "|") (str.to_re ",")) (re.+ (str.to_re "0")) (re.+ (re.range "1" "9")))) (str.to_re "\u{a}"))))
; (^(6334)[5-9](\d{11}$|\d{13,14}$))
(assert (not (str.in_re X (re.++ (str.to_re "\u{a}6334") (re.range "5" "9") (re.union ((_ re.loop 11 11) (re.range "0" "9")) ((_ re.loop 13 14) (re.range "0" "9")))))))
(check-sat)
