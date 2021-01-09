(declare-const X String)
; User-Agent\x3AUser-Agent\x3a
(assert (str.in.re X (str.to.re "User-Agent:User-Agent:\x0a")))
; Host\x3AlogUser-Agent\x3AonSubject\x3A
(assert (not (str.in.re X (str.to.re "Host:logUser-Agent:onSubject:\x0a"))))
; <[^>\s]*\bauthor\b[^>]*>
(assert (not (str.in.re X (re.++ (str.to.re "<") (re.* (re.union (str.to.re ">") (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "author") (re.* (re.comp (str.to.re ">"))) (str.to.re ">\x0a")))))
; User-Agent\x3A\w+\x0d\x0asubject=GhostVoice
(assert (str.in.re X (re.++ (str.to.re "User-Agent:") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "\x0d\x0asubject=GhostVoice\x0a"))))
; ^(([0-9]{3})[-]?)*[0-9]{6,7}$
(assert (str.in.re X (re.++ (re.* (re.++ ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (str.to.re "-")))) ((_ re.loop 6 7) (re.range "0" "9")) (str.to.re "\x0a"))))
(check-sat)
