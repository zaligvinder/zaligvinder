(declare-const X String)
; Subject\x3a\d+zmnjgmomgbdz\x2fzzmw\.gzt
(assert (not (str.in.re X (re.++ (str.to.re "Subject:") (re.+ (re.range "0" "9")) (str.to.re "zmnjgmomgbdz/zzmw.gzt\x0a")))))
; (^\b\d+-\d+$\b)|(^\b\d+$\b)
(assert (str.in.re X (re.union (re.++ (re.+ (re.range "0" "9")) (str.to.re "-") (re.+ (re.range "0" "9"))) (re.++ (re.+ (re.range "0" "9")) (str.to.re "\x0a")))))
(check-sat)
