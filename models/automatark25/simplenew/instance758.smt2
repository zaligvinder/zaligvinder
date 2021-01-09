(declare-const X String)
; /\x2fAdmin\x2fFunctionsClient\x2f(check.txt|Select.php|Update.php)/iU
(assert (str.in.re X (re.++ (str.to.re "//Admin/FunctionsClient/") (re.union (re.++ (str.to.re "check") re.allchar (str.to.re "txt")) (re.++ (str.to.re "Select") re.allchar (str.to.re "php")) (re.++ (str.to.re "Update") re.allchar (str.to.re "php"))) (str.to.re "/iU\x0a"))))
(check-sat)
