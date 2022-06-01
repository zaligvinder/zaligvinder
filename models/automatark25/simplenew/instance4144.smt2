(declare-const X String)
; ((www|http)(\W+\S+[^).,:;?\]\} \r\n$]+))
(assert (not (str.in_re X (re.++ (str.to_re "\u{a}") (re.union (str.to_re "www") (str.to_re "http")) (re.+ (re.comp (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_")))) (re.+ (re.comp (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")))) (re.+ (re.union (str.to_re ")") (str.to_re ".") (str.to_re ",") (str.to_re ":") (str.to_re ";") (str.to_re "?") (str.to_re "]") (str.to_re "}") (str.to_re " ") (str.to_re "\u{d}") (str.to_re "\u{a}") (str.to_re "$")))))))
(check-sat)
