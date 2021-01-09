(declare-const X String)
; User-Agent\x3A\d+dll\x3F.*started\x2EfeedbackUser-Agent\x3A
(assert (str.in.re X (re.++ (str.to.re "User-Agent:") (re.+ (re.range "0" "9")) (str.to.re "dll?") (re.* re.allchar) (str.to.re "started.feedbackUser-Agent:\x0a"))))
; /\/[a-zA-Z0-9]{32}\.jar/U
(assert (str.in.re X (re.++ (str.to.re "//") ((_ re.loop 32 32) (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9"))) (str.to.re ".jar/U\x0a"))))
(check-sat)
