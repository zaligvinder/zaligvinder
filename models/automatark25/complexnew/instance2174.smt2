(declare-const X String)
; Referer\x3A\s+HXDownload.*Referer\x3AGREATDripline
(assert (str.in.re X (re.++ (str.to.re "Referer:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "HXDownload") (re.* re.allchar) (str.to.re "Referer:GREATDripline\x0a"))))
; ^((\.)?([a-zA-Z0-9_-]?)(\.)?([a-zA-Z0-9_-]?)(\.)?)+$
(assert (str.in.re X (re.++ (re.+ (re.++ (re.opt (str.to.re ".")) (re.opt (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to.re "_") (str.to.re "-"))) (re.opt (str.to.re ".")) (re.opt (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to.re "_") (str.to.re "-"))) (re.opt (str.to.re ".")))) (str.to.re "\x0a"))))
; ([oO0]*)([|:;=X^])([-']*)([)(oO0\]\[DPp*>X^@])
(assert (not (str.in.re X (re.++ (re.* (re.union (str.to.re "o") (str.to.re "O") (str.to.re "0"))) (re.union (str.to.re "|") (str.to.re ":") (str.to.re ";") (str.to.re "=") (str.to.re "X") (str.to.re "^")) (re.* (re.union (str.to.re "-") (str.to.re "'"))) (re.union (str.to.re ")") (str.to.re "(") (str.to.re "o") (str.to.re "O") (str.to.re "0") (str.to.re "]") (str.to.re "[") (str.to.re "D") (str.to.re "P") (str.to.re "p") (str.to.re "*") (str.to.re ">") (str.to.re "X") (str.to.re "^") (str.to.re "@")) (str.to.re "\x0a")))))
(check-sat)
