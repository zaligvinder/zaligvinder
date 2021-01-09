(declare-const X String)
; <script.*/*>|</script>|<[a-zA-Z][^>]*=['"]+javascript:\w+.*['"]+>|<\w+[^>]*\son\w+=.*[ /]*>
(assert (not (str.in.re X (re.++ (str.to.re "<") (re.union (re.++ (str.to.re "script") (re.* re.allchar) (re.* (str.to.re "/")) (str.to.re ">")) (str.to.re "/script>") (re.++ (re.union (re.range "a" "z") (re.range "A" "Z")) (re.* (re.comp (str.to.re ">"))) (str.to.re "=") (re.+ (re.union (str.to.re "'") (str.to.re "\x22"))) (str.to.re "javascript:") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (re.* re.allchar) (re.+ (re.union (str.to.re "'") (str.to.re "\x22"))) (str.to.re ">")) (re.++ (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (re.* (re.comp (str.to.re ">"))) (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "on") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "=") (re.* re.allchar) (re.* (re.union (str.to.re " ") (str.to.re "/"))) (str.to.re ">\x0a")))))))
; ^[0-9]+[NnSs] [0-9]+[WwEe]$
(assert (str.in.re X (re.++ (re.+ (re.range "0" "9")) (re.union (str.to.re "N") (str.to.re "n") (str.to.re "S") (str.to.re "s")) (str.to.re " ") (re.+ (re.range "0" "9")) (re.union (str.to.re "W") (str.to.re "w") (str.to.re "E") (str.to.re "e")) (str.to.re "\x0a"))))
; /filename=[^\n]*\x2ewrf/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".wrf/i\x0a"))))
; ^([1][0-9]|[0-9])[1-9]{2}$
(assert (str.in.re X (re.++ (re.union (re.++ (str.to.re "1") (re.range "0" "9")) (re.range "0" "9")) ((_ re.loop 2 2) (re.range "1" "9")) (str.to.re "\x0a"))))
(check-sat)
