(declare-const X String)
; /filename=[^\n]*\x2epaq8o/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".paq8o/i\x0a")))))
; www\x2Emaxifiles\x2Ecom.*Host\x3A
(assert (not (str.in.re X (re.++ (str.to.re "www.maxifiles.com") (re.* re.allchar) (str.to.re "Host:\x0a")))))
; /hwid=[^\x0a\x26]+?\x26pc=[^\x0a\x26]+?\x26localip=[^\x0a\x26]+?\x26winver=/U
(assert (not (str.in.re X (re.++ (str.to.re "/hwid=") (re.+ (re.union (str.to.re "\x0a") (str.to.re "&"))) (str.to.re "&pc=") (re.+ (re.union (str.to.re "\x0a") (str.to.re "&"))) (str.to.re "&localip=") (re.+ (re.union (str.to.re "\x0a") (str.to.re "&"))) (str.to.re "&winver=/U\x0a")))))
; /\x2fAdmin\x2fFunctionsClient\x2f(check.txt|Select.php|Update.php)/iU
(assert (str.in.re X (re.++ (str.to.re "//Admin/FunctionsClient/") (re.union (re.++ (str.to.re "check") re.allchar (str.to.re "txt")) (re.++ (str.to.re "Select") re.allchar (str.to.re "php")) (re.++ (str.to.re "Update") re.allchar (str.to.re "php"))) (str.to.re "/iU\x0a"))))
; ^100$|^0$|^[1-9]{0,1}[0-9]{0,1}$|^[1-9]{0,1}[0-9]{0,1}\.[0-9]{1,3}$
(assert (str.in.re X (re.union (str.to.re "100") (str.to.re "0") (re.++ (re.opt (re.range "1" "9")) (re.opt (re.range "0" "9"))) (re.++ (re.opt (re.range "1" "9")) (re.opt (re.range "0" "9")) (str.to.re ".") ((_ re.loop 1 3) (re.range "0" "9")) (str.to.re "\x0a")))))
(check-sat)
