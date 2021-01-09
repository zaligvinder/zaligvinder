(declare-const X String)
; (-\d{1,} | \d{1,} | \d{1,}-\d{1,} | \d{1,}-)(,(-\d{1,} | \d{1,} | \d{1,}-\d{1,} | \d{1,}))*
(assert (str.in.re X (re.++ (re.union (re.++ (str.to.re "-") (re.+ (re.range "0" "9")) (str.to.re " ")) (re.++ (str.to.re " ") (re.+ (re.range "0" "9")) (str.to.re " ")) (re.++ (str.to.re " ") (re.+ (re.range "0" "9")) (str.to.re "-") (re.+ (re.range "0" "9")) (str.to.re " ")) (re.++ (str.to.re " ") (re.+ (re.range "0" "9")) (str.to.re "-"))) (re.* (re.++ (str.to.re ",") (re.union (re.++ (str.to.re "-") (re.+ (re.range "0" "9")) (str.to.re " ")) (re.++ (str.to.re " ") (re.+ (re.range "0" "9")) (str.to.re " ")) (re.++ (str.to.re " ") (re.+ (re.range "0" "9")) (str.to.re "-") (re.+ (re.range "0" "9")) (str.to.re " ")) (re.++ (str.to.re " ") (re.+ (re.range "0" "9")))))) (str.to.re "\x0a"))))
; User-Agent\x3A\s+Host\x3A[^\n\r]*Hourspjpoptwql\x2frlnjFrom\x3Asbver\x3aGhost
(assert (str.in.re X (re.++ (str.to.re "User-Agent:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Host:") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "Hourspjpoptwql/rlnjFrom:sbver:Ghost\x13\x0a"))))
; /\/vic\.aspx\?ver=\d\.\d\.\d+\.\d\x26rnd=\d{5}/Ui
(assert (not (str.in.re X (re.++ (str.to.re "//vic.aspx?ver=") (re.range "0" "9") (str.to.re ".") (re.range "0" "9") (str.to.re ".") (re.+ (re.range "0" "9")) (str.to.re ".") (re.range "0" "9") (str.to.re "&rnd=") ((_ re.loop 5 5) (re.range "0" "9")) (str.to.re "/Ui\x0a")))))
; /\/[a-zA-Z0-9]{4,10}\.jar$/U
(assert (str.in.re X (re.++ (str.to.re "//") ((_ re.loop 4 10) (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9"))) (str.to.re ".jar/U\x0a"))))
; ^((\d)?(\d{1})(\.{1})(\d)?(\d{1})){1}$
(assert (not (str.in.re X (re.++ ((_ re.loop 1 1) (re.++ (re.opt (re.range "0" "9")) ((_ re.loop 1 1) (re.range "0" "9")) ((_ re.loop 1 1) (str.to.re ".")) (re.opt (re.range "0" "9")) ((_ re.loop 1 1) (re.range "0" "9")))) (str.to.re "\x0a")))))
(check-sat)
