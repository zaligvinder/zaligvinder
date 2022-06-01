(declare-const X String)
; addrwww\u{2E}trustedsearch\u{2E}comX-Mailer\u{3A}
(assert (not (str.in_re X (str.to_re "addrwww.trustedsearch.comX-Mailer:\u{13}\u{a}"))))
; /^connected\u{2e}[^\u{D}\u{A}]*20\d\d[^\u{D}\u{A}]*ver\u{3A}\s+Legends\s2\u{2e}1/smi
(assert (str.in_re X (re.++ (str.to_re "/connected.") (re.* (re.union (str.to_re "\u{d}") (str.to_re "\u{a}"))) (str.to_re "20") (re.range "0" "9") (re.range "0" "9") (re.* (re.union (str.to_re "\u{d}") (str.to_re "\u{a}"))) (str.to_re "ver:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Legends") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "2.1/smi\u{a}"))))
; (^[1-9]$)|(^10$)
(assert (str.in_re X (re.union (re.range "1" "9") (str.to_re "10\u{a}"))))
(check-sat)
