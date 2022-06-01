(declare-const X String)
; /\.php\u{3f}w\u{3d}\d+\u{26}n\u{3d}\d+/U
(assert (not (str.in_re X (re.++ (str.to_re "/.php?w=") (re.+ (re.range "0" "9")) (str.to_re "&n=") (re.+ (re.range "0" "9")) (str.to_re "/U\u{a}")))))
; ^(192\.168\.[0-9]|[1-9][0-9]|[1-2][0-5][0-5]\.[0-9]|[1-9][0-9]|[1-2][0-5][0-5])$
(assert (not (str.in_re X (re.++ (re.union (re.++ (str.to_re "192.168.") (re.range "0" "9")) (re.++ (re.range "1" "9") (re.range "0" "9")) (re.++ (re.range "1" "2") (re.range "0" "5") (re.range "0" "5") (str.to_re ".") (re.range "0" "9")) (re.++ (re.range "1" "9") (re.range "0" "9")) (re.++ (re.range "1" "2") (re.range "0" "5") (re.range "0" "5"))) (str.to_re "\u{a}")))))
; Host\u{3A}\s+\u{2A}PORT3\u{2A}\[DRIVEwww\.raxsearch\.comSubject\u{3a}Host\u{3a}
(assert (not (str.in_re X (re.++ (str.to_re "Host:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "*PORT3*[DRIVEwww.raxsearch.comSubject:Host:\u{a}")))))
; Host\u{3A}Test\u{3C}\u{2F}chat\u{3E}ResultsSubject\u{3A}
(assert (not (str.in_re X (str.to_re "Host:Test</chat>ResultsSubject:\u{a}"))))
; ^[0-9][0-9,]*[0-9]$
(assert (not (str.in_re X (re.++ (re.range "0" "9") (re.* (re.union (re.range "0" "9") (str.to_re ","))) (re.range "0" "9") (str.to_re "\u{a}")))))
(check-sat)
