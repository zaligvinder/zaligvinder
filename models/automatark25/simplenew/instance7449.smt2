(declare-const X String)
; /^Subject\u{3A}[^\r\n]*Trojaner-Info\sNewsletter/smi
(assert (str.in_re X (re.++ (str.to_re "/Subject:") (re.* (re.union (str.to_re "\u{d}") (str.to_re "\u{a}"))) (str.to_re "Trojaner-Info") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "Newsletter/smi\u{a}"))))
(check-sat)
