(declare-const X String)
; www\u{2E}freescratchandwin\u{2E}com\d+Server.*www\u{2E}cameup\u{2E}com
(assert (not (str.in_re X (re.++ (str.to_re "www.freescratchandwin.com") (re.+ (re.range "0" "9")) (str.to_re "Server") (re.* re.allchar) (str.to_re "www.cameup.com\u{13}\u{a}")))))
(check-sat)
