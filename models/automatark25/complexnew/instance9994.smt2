(declare-const X String)
; (^([0-9]*[.][0-9]*[1-9]+[0-9]*)$)|(^([0-9]*[1-9]+[0-9]*[.][0-9]+)$)|(^([1-9]+[0-9]*)$)
(assert (str.in_re X (re.union (re.++ (re.* (re.range "0" "9")) (str.to_re ".") (re.* (re.range "0" "9")) (re.+ (re.range "1" "9")) (re.* (re.range "0" "9"))) (re.++ (re.* (re.range "0" "9")) (re.+ (re.range "1" "9")) (re.* (re.range "0" "9")) (str.to_re ".") (re.+ (re.range "0" "9"))) (re.++ (str.to_re "\u{a}") (re.+ (re.range "1" "9")) (re.* (re.range "0" "9"))))))
; (^\d{9}[V|v|x|X]$)
(assert (not (str.in_re X (re.++ (str.to_re "\u{a}") ((_ re.loop 9 9) (re.range "0" "9")) (re.union (str.to_re "V") (str.to_re "|") (str.to_re "v") (str.to_re "x") (str.to_re "X"))))))
; TOOLBAR\s+dist\u{2E}atlas\u{2D}ia\u{2E}com
(assert (str.in_re X (re.++ (str.to_re "TOOLBAR") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "dist.atlas-ia.com\u{a}"))))
(check-sat)
