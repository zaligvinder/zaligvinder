(declare-const X String)
; User-Agent\x3A\d+moreKontikiHost\x3a
(assert (str.in.re X (re.++ (str.to.re "User-Agent:") (re.+ (re.range "0" "9")) (str.to.re "moreKontikiHost:\x0a"))))
; /\x2eopus([\?\x5c\x2f]|$)/smiU
(assert (str.in.re X (re.++ (str.to.re "/.opus") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a"))))
; ^([0-1]?[0-9]|[2][0-3]):([0-5][0-9]):([0-5][0-9])$
(assert (not (str.in.re X (re.++ (re.union (re.++ (re.opt (re.range "0" "1")) (re.range "0" "9")) (re.++ (str.to.re "2") (re.range "0" "3"))) (str.to.re "::\x0a") (re.range "0" "5") (re.range "0" "9") (re.range "0" "5") (re.range "0" "9")))))
; www\.123mania\.com\x2F0409areZC-Bridge
(assert (str.in.re X (str.to.re "www.123mania.com/0409areZC-Bridge\x0a")))
(check-sat)
