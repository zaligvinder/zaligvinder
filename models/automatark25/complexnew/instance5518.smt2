(declare-const X String)
; \u{2E}php\s+www\u{2E}webfringe\u{2E}com
(assert (str.in_re X (re.++ (str.to_re ".php") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "www.webfringe.com\u{a}"))))
; /\&k=\d+($|\&h=)/U
(assert (str.in_re X (re.++ (str.to_re "/&k=") (re.+ (re.range "0" "9")) (str.to_re "&h=/U\u{a}"))))
(check-sat)
