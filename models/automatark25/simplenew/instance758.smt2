(declare-const X String)
; /\u{2f}Admin\u{2f}FunctionsClient\u{2f}(check.txt|Select.php|Update.php)/iU
(assert (str.in_re X (re.++ (str.to_re "//Admin/FunctionsClient/") (re.union (re.++ (str.to_re "check") re.allchar (str.to_re "txt")) (re.++ (str.to_re "Select") re.allchar (str.to_re "php")) (re.++ (str.to_re "Update") re.allchar (str.to_re "php"))) (str.to_re "/iU\u{a}"))))
(check-sat)
