(declare-const X String)
; [\u{1}-\u{8},\u{A}-\u{1F},\u{7F},\u{81},\u{8D},\u{8F},\u{90},\u{9D}]
(assert (str.in_re X (re.++ (re.union (re.range "\u{1}" "\u{8}") (str.to_re ",") (re.range "\u{a}" "\u{1f}") (str.to_re "\u{7f}") (str.to_re "\u{81}") (str.to_re "\u{8d}") (str.to_re "\u{8f}") (str.to_re "\u{90}") (str.to_re "\u{9d}")) (str.to_re "\u{a}"))))
(check-sat)
