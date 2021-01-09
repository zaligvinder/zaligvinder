(declare-const X String)
; User-Agent\x3A.*community\w+\x0d\x0asubject=GhostVoice
(assert (str.in.re X (re.++ (str.to.re "User-Agent:") (re.* re.allchar) (str.to.re "community") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "\x0d\x0asubject=GhostVoice\x0a"))))
(check-sat)
