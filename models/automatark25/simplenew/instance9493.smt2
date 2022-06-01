(declare-const X String)
; /^User-Agent\u{3A}[^\r\n]*TT-Bot/mi
(assert (not (str.in_re X (re.++ (str.to_re "/User-Agent:") (re.* (re.union (str.to_re "\u{d}") (str.to_re "\u{a}"))) (str.to_re "TT-Bot/mi\u{a}")))))
(check-sat)
