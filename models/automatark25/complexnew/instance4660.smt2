(declare-const X String)
; \x2Ftoolbar\x2Fsupremetb\s+wjpropqmlpohj\x2flo\s+resultsmaster\x2Ecom
(assert (not (str.in.re X (re.++ (str.to.re "/toolbar/supremetb") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "wjpropqmlpohj/lo") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "resultsmaster.com\x13\x0a")))))
; Explorer\x2Fsto=notificationfind
(assert (not (str.in.re X (str.to.re "Explorer/sto=notification\x13find\x0a"))))
; /\x2espx([\?\x5c\x2f]|$)/smiU
(assert (not (str.in.re X (re.++ (str.to.re "/.spx") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a")))))
; Subject\x3AUser-Agent\x3AiebarSubject\x3A
(assert (not (str.in.re X (str.to.re "Subject:User-Agent:iebarSubject:\x0a"))))
; /\x2fAdmin\x2fFunctionsClient\x2f(check.txt|Select.php|Update.php)/iU
(assert (not (str.in.re X (re.++ (str.to.re "//Admin/FunctionsClient/") (re.union (re.++ (str.to.re "check") re.allchar (str.to.re "txt")) (re.++ (str.to.re "Select") re.allchar (str.to.re "php")) (re.++ (str.to.re "Update") re.allchar (str.to.re "php"))) (str.to.re "/iU\x0a")))))
(check-sat)
