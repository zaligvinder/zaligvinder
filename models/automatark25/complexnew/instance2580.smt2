(declare-const X String)
; ([oO0]*)([|:;=X^])([-']*)([)(oO0\]\[DPp*>X^@])
(assert (str.in_re X (re.++ (re.* (re.union (str.to_re "o") (str.to_re "O") (str.to_re "0"))) (re.union (str.to_re "|") (str.to_re ":") (str.to_re ";") (str.to_re "=") (str.to_re "X") (str.to_re "^")) (re.* (re.union (str.to_re "-") (str.to_re "'"))) (re.union (str.to_re ")") (str.to_re "(") (str.to_re "o") (str.to_re "O") (str.to_re "0") (str.to_re "]") (str.to_re "[") (str.to_re "D") (str.to_re "P") (str.to_re "p") (str.to_re "*") (str.to_re ">") (str.to_re "X") (str.to_re "^") (str.to_re "@")) (str.to_re "\u{a}"))))
; config\u{2E}180solutions\u{2E}com\dStableWeb-MailUser-Agent\u{3A}
(assert (str.in_re X (re.++ (str.to_re "config.180solutions.com") (re.range "0" "9") (str.to_re "StableWeb-MailUser-Agent:\u{a}"))))
; /^\/uploading\/id=\d+\&u=.*==$/U
(assert (not (str.in_re X (re.++ (str.to_re "//uploading/id=") (re.+ (re.range "0" "9")) (str.to_re "&u=") (re.* re.allchar) (str.to_re "==/U\u{a}")))))
(check-sat)
