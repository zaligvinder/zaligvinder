(declare-const X String)
; User-Agent\u{3A}\d+dll\u{3F}.*started\u{2E}feedbackUser-Agent\u{3A}
(assert (not (str.in_re X (re.++ (str.to_re "User-Agent:") (re.+ (re.range "0" "9")) (str.to_re "dll?") (re.* re.allchar) (str.to_re "started.feedbackUser-Agent:\u{a}")))))
(check-sat)
