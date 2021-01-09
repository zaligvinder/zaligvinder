(declare-const X String)
; &[a-zA-Z]+\d{0,3};
(assert (not (str.in.re X (re.++ (str.to.re "&") (re.+ (re.union (re.range "a" "z") (re.range "A" "Z"))) ((_ re.loop 0 3) (re.range "0" "9")) (str.to.re ";\x0a")))))
; ^([A-Z]{1,}[a-z]{1,}[A-Z]{0,}[a-z]{0,}[A-Z]{0,}[a-z]{0,}[A-Z]{0,}[a-z]{0,}[A-Z]{0,}[a-z]{0,}[A-Z]{0,}[a-z]{0,}[A-Z]{0,}[a-z]{0,}[A-Z]{0,}[a-z]{0,}[A-Z]{0,}[a-z]{0,}[A-Z]{0,}[a-z]{0,}[A-Z]{0,}[a-z]{0,}[A-Z]{0,}[a-z]{0,})$
(assert (not (str.in.re X (re.++ (str.to.re "\x0a") (re.+ (re.range "A" "Z")) (re.+ (re.range "a" "z")) (re.* (re.range "A" "Z")) (re.* (re.range "a" "z")) (re.* (re.range "A" "Z")) (re.* (re.range "a" "z")) (re.* (re.range "A" "Z")) (re.* (re.range "a" "z")) (re.* (re.range "A" "Z")) (re.* (re.range "a" "z")) (re.* (re.range "A" "Z")) (re.* (re.range "a" "z")) (re.* (re.range "A" "Z")) (re.* (re.range "a" "z")) (re.* (re.range "A" "Z")) (re.* (re.range "a" "z")) (re.* (re.range "A" "Z")) (re.* (re.range "a" "z")) (re.* (re.range "A" "Z")) (re.* (re.range "a" "z")) (re.* (re.range "A" "Z")) (re.* (re.range "a" "z")) (re.* (re.range "A" "Z")) (re.* (re.range "a" "z"))))))
; Host\x3A.*NETObserve\d+Host\x3aohgdhkzfhdzo\x2fuwpOK\r\n
(assert (str.in.re X (re.++ (str.to.re "Host:") (re.* re.allchar) (str.to.re "NETObserve") (re.+ (re.range "0" "9")) (str.to.re "Host:ohgdhkzfhdzo/uwpOK\x0d\x0a\x0a"))))
; User-Agent\x3A\w+\x0d\x0asubject=GhostVoice
(assert (not (str.in.re X (re.++ (str.to.re "User-Agent:") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "\x0d\x0asubject=GhostVoice\x0a")))))
(check-sat)
