(declare-const X String)
; ([oO0]*)([|:;=X^])([-']*)([)(oO0\]\[DPp*>X^@])
(assert (str.in.re X (re.++ (re.* (re.union (str.to.re "o") (str.to.re "O") (str.to.re "0"))) (re.union (str.to.re "|") (str.to.re ":") (str.to.re ";") (str.to.re "=") (str.to.re "X") (str.to.re "^")) (re.* (re.union (str.to.re "-") (str.to.re "'"))) (re.union (str.to.re ")") (str.to.re "(") (str.to.re "o") (str.to.re "O") (str.to.re "0") (str.to.re "]") (str.to.re "[") (str.to.re "D") (str.to.re "P") (str.to.re "p") (str.to.re "*") (str.to.re ">") (str.to.re "X") (str.to.re "^") (str.to.re "@")) (str.to.re "\x0a"))))
; config\x2E180solutions\x2Ecom\dStableWeb-MailUser-Agent\x3A
(assert (str.in.re X (re.++ (str.to.re "config.180solutions.com") (re.range "0" "9") (str.to.re "StableWeb-MailUser-Agent:\x0a"))))
; /^\/uploading\/id=\d+\&u=.*==$/U
(assert (not (str.in.re X (re.++ (str.to.re "//uploading/id=") (re.+ (re.range "0" "9")) (str.to.re "&u=") (re.* re.allchar) (str.to.re "==/U\x0a")))))
(check-sat)
