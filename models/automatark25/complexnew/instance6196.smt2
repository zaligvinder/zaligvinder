(declare-const X String)
; <[^>]*?>
(assert (not (str.in.re X (re.++ (str.to.re "<") (re.* (re.comp (str.to.re ">"))) (str.to.re ">\x0a")))))
; [\\""=/>](25[0-4]|2[0-4][0-9]|1\d{2}|\d{2})\.((25[0-4]|2[0-4][0-9]|1\d{2}|\d{1,2})\.){2}(25[0-4]|2[0-4][0-9]|1\d{2}|\d{2}|[1-9])\b[\\""=:;,/<]
(assert (str.in.re X (re.++ (re.union (str.to.re "\x5c") (str.to.re "\x22") (str.to.re "=") (str.to.re "/") (str.to.re ">")) (re.union (re.++ (str.to.re "25") (re.range "0" "4")) (re.++ (str.to.re "2") (re.range "0" "4") (re.range "0" "9")) (re.++ (str.to.re "1") ((_ re.loop 2 2) (re.range "0" "9"))) ((_ re.loop 2 2) (re.range "0" "9"))) (str.to.re ".") ((_ re.loop 2 2) (re.++ (re.union (re.++ (str.to.re "25") (re.range "0" "4")) (re.++ (str.to.re "2") (re.range "0" "4") (re.range "0" "9")) (re.++ (str.to.re "1") ((_ re.loop 2 2) (re.range "0" "9"))) ((_ re.loop 1 2) (re.range "0" "9"))) (str.to.re "."))) (re.union (re.++ (str.to.re "25") (re.range "0" "4")) (re.++ (str.to.re "2") (re.range "0" "4") (re.range "0" "9")) (re.++ (str.to.re "1") ((_ re.loop 2 2) (re.range "0" "9"))) ((_ re.loop 2 2) (re.range "0" "9")) (re.range "1" "9")) (re.union (str.to.re "\x5c") (str.to.re "\x22") (str.to.re "=") (str.to.re ":") (str.to.re ";") (str.to.re ",") (str.to.re "/") (str.to.re "<")) (str.to.re "\x0a"))))
; /insertBefore\(document\.body\)([^?]+createElement\([\x22\x27]TR[\x22\x27]\)\))+[^?]+<body[^?]+?<\/body>/i
(assert (str.in.re X (re.++ (str.to.re "/insertBefore(document.body)") (re.+ (re.++ (re.+ (re.comp (str.to.re "?"))) (str.to.re "createElement(") (re.union (str.to.re "\x22") (str.to.re "'")) (str.to.re "TR") (re.union (str.to.re "\x22") (str.to.re "'")) (str.to.re "))"))) (re.+ (re.comp (str.to.re "?"))) (str.to.re "<body") (re.+ (re.comp (str.to.re "?"))) (str.to.re "</body>/i\x0a"))))
; /file=[\x7c\x27]/Ui
(assert (not (str.in.re X (re.++ (str.to.re "/file=") (re.union (str.to.re "|") (str.to.re "'")) (str.to.re "/Ui\x0a")))))
(check-sat)
