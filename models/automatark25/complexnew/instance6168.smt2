(declare-const X String)
; /\x2fAdmin\x2fFunctionsClient\x2f(check.txt|Select.php|Update.php)/iU
(assert (not (str.in.re X (re.++ (str.to.re "//Admin/FunctionsClient/") (re.union (re.++ (str.to.re "check") re.allchar (str.to.re "txt")) (re.++ (str.to.re "Select") re.allchar (str.to.re "php")) (re.++ (str.to.re "Update") re.allchar (str.to.re "php"))) (str.to.re "/iU\x0a")))))
; ^[-\w\s"'=/!@#%&,;:`~\.\$\^\{\[\(\|\)\]\}\*\+\?\\]*$
(assert (not (str.in.re X (re.++ (re.* (re.union (str.to.re "-") (str.to.re "\x22") (str.to.re "'") (str.to.re "=") (str.to.re "/") (str.to.re "!") (str.to.re "@") (str.to.re "#") (str.to.re "%") (str.to.re "&") (str.to.re ",") (str.to.re ";") (str.to.re ":") (str.to.re "`") (str.to.re "~") (str.to.re ".") (str.to.re "$") (str.to.re "^") (str.to.re "{") (str.to.re "[") (str.to.re "(") (str.to.re "|") (str.to.re ")") (str.to.re "]") (str.to.re "}") (str.to.re "*") (str.to.re "+") (str.to.re "?") (str.to.re "\x5c") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_") (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "\x0a")))))
; ^\d+\.\d\.\d[01]\d[0-3]\d\.[1-9]\d*$
(assert (str.in.re X (re.++ (re.+ (re.range "0" "9")) (str.to.re ".") (re.range "0" "9") (str.to.re ".") (re.range "0" "9") (re.union (str.to.re "0") (str.to.re "1")) (re.range "0" "9") (re.range "0" "3") (re.range "0" "9") (str.to.re ".") (re.range "1" "9") (re.* (re.range "0" "9")) (str.to.re "\x0a"))))
; \x7D\x7BTrojan\x3A\w+Host\x3A\s\d\x2El
(assert (str.in.re X (re.++ (str.to.re "}{Trojan:") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "Host:") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (re.range "0" "9") (str.to.re ".l\x0a"))))
; /\/\?[0-9a-f]{32}/Ui
(assert (not (str.in.re X (re.++ (str.to.re "//?") ((_ re.loop 32 32) (re.union (re.range "0" "9") (re.range "a" "f"))) (str.to.re "/Ui\x0a")))))
(check-sat)
