(declare-const X String)
; /filename=[^\n]*\u{2e}s3m/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".s3m/i\u{a}")))))
; /^\s*?RCPT\s+?TO\u{3a}[^\r\n]*?\u{28}\u{29}\s\u{7b}/i
(assert (not (str.in_re X (re.++ (str.to_re "/") (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "RCPT") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "TO:") (re.* (re.union (str.to_re "\u{d}") (str.to_re "\u{a}"))) (str.to_re "()") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "{/i\u{a}")))))
; [:;]{1}[-~+o]?[(<\[]+
(assert (not (str.in_re X (re.++ ((_ re.loop 1 1) (re.union (str.to_re ":") (str.to_re ";"))) (re.opt (re.union (str.to_re "-") (str.to_re "~") (str.to_re "+") (str.to_re "o"))) (re.+ (re.union (str.to_re "(") (str.to_re "<") (str.to_re "["))) (str.to_re "\u{a}")))))
; Subject\u{3A}.*www\u{2E}webcruiser\u{2E}cc\w+www\u{2E}topadwarereviews\u{2E}com
(assert (not (str.in_re X (re.++ (str.to_re "Subject:") (re.* re.allchar) (str.to_re "www.webcruiser.cc") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "www.topadwarereviews.com\u{a}")))))
(check-sat)
