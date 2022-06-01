(declare-const X String)
; /^\/uploading\/id=\d+\&u=.*==$/U
(assert (not (str.in_re X (re.++ (str.to_re "//uploading/id=") (re.+ (re.range "0" "9")) (str.to_re "&u=") (re.* re.allchar) (str.to_re "==/U\u{a}")))))
; /^<!--\s+[\w]{52,}\s+-->\r\n/smi
(assert (str.in_re X (re.++ (str.to_re "/<!--") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "-->\u{d}\u{a}/smi\u{a}") ((_ re.loop 52 52) (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (re.* (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))))))
(check-sat)
