(declare-const X String)
; href[\s]*=[\s]*"[^\n"]*"
(assert (not (str.in_re X (re.++ (str.to_re "href") (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "=") (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "\u{22}") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{22}"))) (str.to_re "\u{22}\u{a}")))))
; <.*\b(bgcolor\s*=\s*[\"|\']*(\#\w{6})[\"|\']*).*>
(assert (not (str.in_re X (re.++ (str.to_re "<") (re.* re.allchar) (re.* re.allchar) (str.to_re ">\u{a}bgcolor") (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "=") (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (re.* (re.union (str.to_re "\u{22}") (str.to_re "|") (str.to_re "'"))) (re.* (re.union (str.to_re "\u{22}") (str.to_re "|") (str.to_re "'"))) (str.to_re "#") ((_ re.loop 6 6) (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_")))))))
; ovplHost\u{3A}Host\u{3A}DownloadUser
(assert (not (str.in_re X (str.to_re "ovplHost:Host:DownloadUser\u{a}"))))
; LOG\s+spyblpatHost\u{3A}is\u{2E}php
(assert (not (str.in_re X (re.++ (str.to_re "LOG") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "spyblpatHost:is.php\u{a}")))))
(check-sat)
