(declare-const X String)
; StarLoggerCookie\x3aHost\x3APRODUCEDwebsearch\.getmirar\.com
(assert (str.in.re X (str.to.re "StarLoggerCookie:Host:PRODUCEDwebsearch.getmirar.com\x0a")))
; User-Agent\x3A\s+ocllceclbhs\x2fgth.*Host\x3A
(assert (not (str.in.re X (re.++ (str.to.re "User-Agent:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "ocllceclbhs/gth") (re.* re.allchar) (str.to.re "Host:\x0a")))))
; <script.*/*>|</script>|<[a-zA-Z][^>]*=['"]+javascript:\w+.*['"]+>|<\w+[^>]*\son\w+=.*[ /]*>
(assert (not (str.in.re X (re.++ (str.to.re "<") (re.union (re.++ (str.to.re "script") (re.* re.allchar) (re.* (str.to.re "/")) (str.to.re ">")) (str.to.re "/script>") (re.++ (re.union (re.range "a" "z") (re.range "A" "Z")) (re.* (re.comp (str.to.re ">"))) (str.to.re "=") (re.+ (re.union (str.to.re "'") (str.to.re "\x22"))) (str.to.re "javascript:") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (re.* re.allchar) (re.+ (re.union (str.to.re "'") (str.to.re "\x22"))) (str.to.re ">")) (re.++ (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (re.* (re.comp (str.to.re ">"))) (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "on") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "=") (re.* re.allchar) (re.* (re.union (str.to.re " ") (str.to.re "/"))) (str.to.re ">\x0a")))))))
(check-sat)
