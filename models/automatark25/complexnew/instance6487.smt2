(declare-const X String)
; /<script>.*?\x2f\x2a\w+\s\x2a\x2f\s*\x22\w+\x22\x2b\x22\w+\x22\x2esubstr\x28\d{2},\d{2}\x29\x2f\x2a\w+\s\x2a\x2f\s\x3b/
(assert (not (str.in.re X (re.++ (str.to.re "/<script>") (re.* re.allchar) (str.to.re "/*") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "*/") (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "\x22") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "\x22+\x22") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "\x22.substr(") ((_ re.loop 2 2) (re.range "0" "9")) (str.to.re ",") ((_ re.loop 2 2) (re.range "0" "9")) (str.to.re ")/*") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "*/") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re ";/\x0a")))))
; /\x2fsoft(64|32)\x2edll$/U
(assert (not (str.in.re X (re.++ (str.to.re "//soft") (re.union (str.to.re "64") (str.to.re "32")) (str.to.re ".dll/U\x0a")))))
; .+\.([^.]+)$
(assert (not (str.in.re X (re.++ (re.+ re.allchar) (str.to.re ".") (re.+ (re.comp (str.to.re "."))) (str.to.re "\x0a")))))
(check-sat)
