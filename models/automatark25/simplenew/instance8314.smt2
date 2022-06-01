(declare-const X String)
; /hwid=[^\u{a}\u{26}]+?\u{26}pc=[^\u{a}\u{26}]+?\u{26}localip=[^\u{a}\u{26}]+?\u{26}winver=/U
(assert (not (str.in_re X (re.++ (str.to_re "/hwid=") (re.+ (re.union (str.to_re "\u{a}") (str.to_re "&"))) (str.to_re "&pc=") (re.+ (re.union (str.to_re "\u{a}") (str.to_re "&"))) (str.to_re "&localip=") (re.+ (re.union (str.to_re "\u{a}") (str.to_re "&"))) (str.to_re "&winver=/U\u{a}")))))
(check-sat)
