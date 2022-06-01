(declare-const X String)
; (-\d{1,} | \d{1,} | \d{1,}-\d{1,} | \d{1,}-)(,(-\d{1,} | \d{1,} | \d{1,}-\d{1,} | \d{1,}))*
(assert (str.in_re X (re.++ (re.union (re.++ (str.to_re "-") (re.+ (re.range "0" "9")) (str.to_re " ")) (re.++ (str.to_re " ") (re.+ (re.range "0" "9")) (str.to_re " ")) (re.++ (str.to_re " ") (re.+ (re.range "0" "9")) (str.to_re "-") (re.+ (re.range "0" "9")) (str.to_re " ")) (re.++ (str.to_re " ") (re.+ (re.range "0" "9")) (str.to_re "-"))) (re.* (re.++ (str.to_re ",") (re.union (re.++ (str.to_re "-") (re.+ (re.range "0" "9")) (str.to_re " ")) (re.++ (str.to_re " ") (re.+ (re.range "0" "9")) (str.to_re " ")) (re.++ (str.to_re " ") (re.+ (re.range "0" "9")) (str.to_re "-") (re.+ (re.range "0" "9")) (str.to_re " ")) (re.++ (str.to_re " ") (re.+ (re.range "0" "9")))))) (str.to_re "\u{a}"))))
; User-Agent\u{3A}\s+Host\u{3A}[^\n\r]*Hourspjpoptwql\u{2f}rlnjFrom\u{3A}sbver\u{3a}Ghost
(assert (str.in_re X (re.++ (str.to_re "User-Agent:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Host:") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "Hourspjpoptwql/rlnjFrom:sbver:Ghost\u{13}\u{a}"))))
; /\/vic\.aspx\?ver=\d\.\d\.\d+\.\d\u{26}rnd=\d{5}/Ui
(assert (not (str.in_re X (re.++ (str.to_re "//vic.aspx?ver=") (re.range "0" "9") (str.to_re ".") (re.range "0" "9") (str.to_re ".") (re.+ (re.range "0" "9")) (str.to_re ".") (re.range "0" "9") (str.to_re "&rnd=") ((_ re.loop 5 5) (re.range "0" "9")) (str.to_re "/Ui\u{a}")))))
; /\/[a-zA-Z0-9]{4,10}\.jar$/U
(assert (str.in_re X (re.++ (str.to_re "//") ((_ re.loop 4 10) (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9"))) (str.to_re ".jar/U\u{a}"))))
; ^((\d)?(\d{1})(\.{1})(\d)?(\d{1})){1}$
(assert (not (str.in_re X (re.++ ((_ re.loop 1 1) (re.++ (re.opt (re.range "0" "9")) ((_ re.loop 1 1) (re.range "0" "9")) ((_ re.loop 1 1) (str.to_re ".")) (re.opt (re.range "0" "9")) ((_ re.loop 1 1) (re.range "0" "9")))) (str.to_re "\u{a}")))))
(check-sat)
