(declare-const X String)
; [0-9a-fA-F]+
(assert (str.in_re X (re.++ (re.+ (re.union (re.range "0" "9") (re.range "a" "f") (re.range "A" "F"))) (str.to_re "\u{a}"))))
; client\u{2E}baigoo\u{2E}comUser\u{3A}
(assert (not (str.in_re X (str.to_re "client.baigoo.comUser:\u{a}"))))
(check-sat)
