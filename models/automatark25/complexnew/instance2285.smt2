(declare-const X String)
; ^(966)(5)[0-9]{8}$
(assert (not (str.in.re X (re.++ (str.to.re "9665") ((_ re.loop 8 8) (re.range "0" "9")) (str.to.re "\x0a")))))
; /\.addAnnot\s*\x28[^\x29]*?points\s*\x3a\s*0/i
(assert (str.in.re X (re.++ (str.to.re "/.addAnnot") (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "(") (re.* (re.comp (str.to.re ")"))) (str.to.re "points") (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re ":") (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "0/i\x0a"))))
; ^((\d{5})|(\d{5}-\d{4})|([A-CEGHJ-NPR-TV-Z]\d[A-CEGHJ-NPR-TV-Z]\s\d[A-CEGHJ-NPR-TV-Z]\d))$
(assert (str.in.re X (re.++ (re.union ((_ re.loop 5 5) (re.range "0" "9")) (re.++ ((_ re.loop 5 5) (re.range "0" "9")) (str.to.re "-") ((_ re.loop 4 4) (re.range "0" "9"))) (re.++ (re.union (re.range "A" "C") (str.to.re "E") (str.to.re "G") (str.to.re "H") (re.range "J" "N") (str.to.re "P") (re.range "R" "T") (re.range "V" "Z")) (re.range "0" "9") (re.union (re.range "A" "C") (str.to.re "E") (str.to.re "G") (str.to.re "H") (re.range "J" "N") (str.to.re "P") (re.range "R" "T") (re.range "V" "Z")) (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (re.range "0" "9") (re.union (re.range "A" "C") (str.to.re "E") (str.to.re "G") (str.to.re "H") (re.range "J" "N") (str.to.re "P") (re.range "R" "T") (re.range "V" "Z")) (re.range "0" "9"))) (str.to.re "\x0a"))))
; ^[1-9]{1}[0-9]{3}\s{0,1}?[a-zA-Z]{2}$
(assert (str.in.re X (re.++ ((_ re.loop 1 1) (re.range "1" "9")) ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) ((_ re.loop 2 2) (re.union (re.range "a" "z") (re.range "A" "Z"))) (str.to.re "\x0a"))))
; Logger.*aresflashdownloader\x2Ecom
(assert (str.in.re X (re.++ (str.to.re "Logger") (re.* re.allchar) (str.to.re "aresflashdownloader.com\x0a"))))
(check-sat)
