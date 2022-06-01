(declare-const X String)
; /^Referer\u{3a}[^\r\n]+\/[\w_]{32,}\.html\r$/Hsm
(assert (str.in_re X (re.++ (str.to_re "/Referer:") (re.+ (re.union (str.to_re "\u{d}") (str.to_re "\u{a}"))) (str.to_re "/.html\u{d}/Hsm\u{a}") ((_ re.loop 32 32) (re.union (str.to_re "_") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (re.* (re.union (str.to_re "_") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))))))
(check-sat)
