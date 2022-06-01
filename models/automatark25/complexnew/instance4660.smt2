(declare-const X String)
; \u{2F}toolbar\u{2F}supremetb\s+wjpropqmlpohj\u{2f}lo\s+resultsmaster\u{2E}com
(assert (not (str.in_re X (re.++ (str.to_re "/toolbar/supremetb") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "wjpropqmlpohj/lo") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "resultsmaster.com\u{13}\u{a}")))))
; Explorer\u{2F}sto=notificationfind
(assert (not (str.in_re X (str.to_re "Explorer/sto=notification\u{13}find\u{a}"))))
; /\u{2e}spx([\?\u{5c}\u{2f}]|$)/smiU
(assert (not (str.in_re X (re.++ (str.to_re "/.spx") (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/smiU\u{a}")))))
; Subject\u{3A}User-Agent\u{3A}iebarSubject\u{3A}
(assert (not (str.in_re X (str.to_re "Subject:User-Agent:iebarSubject:\u{a}"))))
; /\u{2f}Admin\u{2f}FunctionsClient\u{2f}(check.txt|Select.php|Update.php)/iU
(assert (not (str.in_re X (re.++ (str.to_re "//Admin/FunctionsClient/") (re.union (re.++ (str.to_re "check") re.allchar (str.to_re "txt")) (re.++ (str.to_re "Select") re.allchar (str.to_re "php")) (re.++ (str.to_re "Update") re.allchar (str.to_re "php"))) (str.to_re "/iU\u{a}")))))
(check-sat)
