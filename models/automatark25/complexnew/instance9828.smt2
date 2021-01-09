(declare-const X String)
; ^([a-z-[dfioquwz]]|[A-Z-[DFIOQUWZ]])\d([a-z-[dfioqu]]|[A-Z-[DFIOQU]])(\s)?\d([a-z-[dfioqu]]|[A-Z-[DFIOQU]])\d$
(assert (str.in.re X (re.++ (re.union (re.++ (re.union (re.range "a" "z") (str.to.re "-") (str.to.re "[") (str.to.re "d") (str.to.re "f") (str.to.re "i") (str.to.re "o") (str.to.re "q") (str.to.re "u") (str.to.re "w") (str.to.re "z")) (str.to.re "]")) (re.++ (re.union (re.range "A" "Z") (str.to.re "-") (str.to.re "[") (str.to.re "D") (str.to.re "F") (str.to.re "I") (str.to.re "O") (str.to.re "Q") (str.to.re "U") (str.to.re "W") (str.to.re "Z")) (str.to.re "]"))) (re.range "0" "9") (re.union (re.++ (re.union (re.range "a" "z") (str.to.re "-") (str.to.re "[") (str.to.re "d") (str.to.re "f") (str.to.re "i") (str.to.re "o") (str.to.re "q") (str.to.re "u")) (str.to.re "]")) (re.++ (re.union (re.range "A" "Z") (str.to.re "-") (str.to.re "[") (str.to.re "D") (str.to.re "F") (str.to.re "I") (str.to.re "O") (str.to.re "Q") (str.to.re "U")) (str.to.re "]"))) (re.opt (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (re.range "0" "9") (re.union (re.++ (re.union (re.range "a" "z") (str.to.re "-") (str.to.re "[") (str.to.re "d") (str.to.re "f") (str.to.re "i") (str.to.re "o") (str.to.re "q") (str.to.re "u")) (str.to.re "]")) (re.++ (re.union (re.range "A" "Z") (str.to.re "-") (str.to.re "[") (str.to.re "D") (str.to.re "F") (str.to.re "I") (str.to.re "O") (str.to.re "Q") (str.to.re "U")) (str.to.re "]"))) (re.range "0" "9") (str.to.re "\x0a"))))
; [^A-Za-z0-9]
(assert (str.in.re X (re.++ (re.union (re.range "A" "Z") (re.range "a" "z") (re.range "0" "9")) (str.to.re "\x0a"))))
; Log[^\n\r]*Host\x3A\dHOST\x3AUser-Agent\x3A
(assert (str.in.re X (re.++ (str.to.re "Log") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "Host:") (re.range "0" "9") (str.to.re "HOST:User-Agent:\x0a"))))
; ^(GB)?([0-9]{9})$
(assert (str.in.re X (re.++ (re.opt (str.to.re "GB")) ((_ re.loop 9 9) (re.range "0" "9")) (str.to.re "\x0a"))))
; (\$\s*[\d,]+\.\d{2})\b
(assert (not (str.in.re X (re.++ (str.to.re "\x0a$") (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (re.+ (re.union (re.range "0" "9") (str.to.re ","))) (str.to.re ".") ((_ re.loop 2 2) (re.range "0" "9"))))))
(check-sat)
