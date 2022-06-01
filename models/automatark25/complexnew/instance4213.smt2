(declare-const X String)
; Host\u{3A}\d+ver\d+sportsUBAgent
(assert (not (str.in_re X (re.++ (str.to_re "Host:") (re.+ (re.range "0" "9")) (str.to_re "ver") (re.+ (re.range "0" "9")) (str.to_re "sportsUBAgent\u{a}")))))
; /filename=[^\n]*\u{2e}maplet/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".maplet/i\u{a}")))))
(check-sat)
