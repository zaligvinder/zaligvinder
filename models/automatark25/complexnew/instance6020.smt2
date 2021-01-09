(declare-const X String)
; (\"http:\/\/www\.youtube\.com\/v\/\w{11}\&rel\=1\")
(assert (not (str.in.re X (re.++ (str.to.re "\x0a\x22http://www.youtube.com/v/") ((_ re.loop 11 11) (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "&rel=1\x22")))))
; User-Agent\x3a[^\n\r]*Echelon.*Blacksnprtz\x7CdialnoSearch
(assert (str.in.re X (re.++ (str.to.re "User-Agent:") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "Echelon") (re.* re.allchar) (str.to.re "Blacksnprtz|dialnoSearch\x0a"))))
; /\x2expm([\?\x5c\x2f]|$)/smiU
(assert (not (str.in.re X (re.++ (str.to.re "/.xpm") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a")))))
; /^\/[a-z]{2,20}\.php\?[a-z]{2,10}\x3d[a-zA-Z0-9\x2f\x2b]+\x3d$/I
(assert (not (str.in.re X (re.++ (str.to.re "//") ((_ re.loop 2 20) (re.range "a" "z")) (str.to.re ".php?") ((_ re.loop 2 10) (re.range "a" "z")) (str.to.re "=") (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to.re "/") (str.to.re "+"))) (str.to.re "=/I\x0a")))))
(check-sat)
