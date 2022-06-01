(declare-const X String)
; client\u{2E}baigoo\u{2E}comUser\u{3A}
(assert (not (str.in_re X (str.to_re "client.baigoo.comUser:\u{a}"))))
; [0-7]+
(assert (not (str.in_re X (re.++ (re.+ (re.range "0" "7")) (str.to_re "\u{a}")))))
(check-sat)
