(declare-const X String)
; ToolbarUser-Agent\u{3A}From\u{3A}
(assert (not (str.in_re X (str.to_re "ToolbarUser-Agent:From:\u{a}"))))
; /\/\*[\d\D]*?\*\//
(assert (str.in_re X (re.++ (str.to_re "//*") (re.* (re.union (re.range "0" "9") (re.comp (re.range "0" "9")))) (str.to_re "*//\u{a}"))))
(check-sat)
