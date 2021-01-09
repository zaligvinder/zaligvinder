(declare-const X String)
; bar\-navig\x2Eyandex\x2Eru\s+
(assert (str.in.re X (re.++ (str.to.re "bar-navig.yandex.ru") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "\x0a"))))
; Host\x3A.*Toolbar\s+Host\x3A
(assert (not (str.in.re X (re.++ (str.to.re "Host:") (re.* re.allchar) (str.to.re "Toolbar") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Host:\x0a")))))
; /^\/[\w-]{48}\.[a-z]{2,8}[0-9]?$/U
(assert (str.in.re X (re.++ (str.to.re "//") ((_ re.loop 48 48) (re.union (str.to.re "-") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re ".") ((_ re.loop 2 8) (re.range "a" "z")) (re.opt (re.range "0" "9")) (str.to.re "/U\x0a"))))
; <script.*/*>|</script>|<[a-zA-Z][^>]*=['"]+javascript:\w+.*['"]+>|<\w+[^>]*\son\w+=.*[ /]*>
(assert (not (str.in.re X (re.++ (str.to.re "<") (re.union (re.++ (str.to.re "script") (re.* re.allchar) (re.* (str.to.re "/")) (str.to.re ">")) (str.to.re "/script>") (re.++ (re.union (re.range "a" "z") (re.range "A" "Z")) (re.* (re.comp (str.to.re ">"))) (str.to.re "=") (re.+ (re.union (str.to.re "'") (str.to.re "\x22"))) (str.to.re "javascript:") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (re.* re.allchar) (re.+ (re.union (str.to.re "'") (str.to.re "\x22"))) (str.to.re ">")) (re.++ (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (re.* (re.comp (str.to.re ">"))) (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "on") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "=") (re.* re.allchar) (re.* (re.union (str.to.re " ") (str.to.re "/"))) (str.to.re ">\x0a")))))))
(check-sat)
