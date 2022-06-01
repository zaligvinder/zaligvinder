(declare-const X String)
; [a-zA-Z_:][a-zA-Z0-9_,\.\-]*?
(assert (str.in_re X (re.++ (re.union (re.range "a" "z") (re.range "A" "Z") (str.to_re "_") (str.to_re ":")) (re.* (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to_re "_") (str.to_re ",") (str.to_re ".") (str.to_re "-"))) (str.to_re "\u{a}"))))
; User-Agent\u{3A}\s+source\=IncrediFind
(assert (not (str.in_re X (re.++ (str.to_re "User-Agent:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "source=IncrediFind\u{a}")))))
(check-sat)
