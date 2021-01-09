(declare-const X String)
; <script.*/*>|</script>|<[a-zA-Z][^>]*=['"]+javascript:\w+.*['"]+>|<\w+[^>]*\son\w+=.*[ /]*>
(assert (not (str.in.re X (re.++ (str.to.re "<") (re.union (re.++ (str.to.re "script") (re.* re.allchar) (re.* (str.to.re "/")) (str.to.re ">")) (str.to.re "/script>") (re.++ (re.union (re.range "a" "z") (re.range "A" "Z")) (re.* (re.comp (str.to.re ">"))) (str.to.re "=") (re.+ (re.union (str.to.re "'") (str.to.re "\x22"))) (str.to.re "javascript:") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (re.* re.allchar) (re.+ (re.union (str.to.re "'") (str.to.re "\x22"))) (str.to.re ">")) (re.++ (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (re.* (re.comp (str.to.re ">"))) (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "on") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "=") (re.* re.allchar) (re.* (re.union (str.to.re " ") (str.to.re "/"))) (str.to.re ">\x0a")))))))
; /\x2escr([\?\x5c\x2f]|$)/smiU
(assert (not (str.in.re X (re.++ (str.to.re "/.scr") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a")))))
; From\x3A\w+SoftActivity\d+
(assert (not (str.in.re X (re.++ (str.to.re "From:") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "SoftActivity\x13") (re.+ (re.range "0" "9")) (str.to.re "\x0a")))))
; User-Agent\x3a\w+Owner\x3A
(assert (not (str.in.re X (re.++ (str.to.re "User-Agent:") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "Owner:\x0a")))))
; Theef2offers\x2Ebullseye-network\x2Ecom
(assert (str.in.re X (str.to.re "Theef2offers.bullseye-network.com\x0a")))
(check-sat)
