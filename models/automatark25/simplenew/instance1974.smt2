(declare-const X String)
; /^GET \/\w+\/\d{5}\/[a-z]{4}\.php\?[a-z]{3}\x5Fid=[A-Za-z0-9+\/]{43}= HTTP\//
(assert (str.in.re X (re.++ (str.to.re "/GET /") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "/") ((_ re.loop 5 5) (re.range "0" "9")) (str.to.re "/") ((_ re.loop 4 4) (re.range "a" "z")) (str.to.re ".php?") ((_ re.loop 3 3) (re.range "a" "z")) (str.to.re "_id=") ((_ re.loop 43 43) (re.union (re.range "A" "Z") (re.range "a" "z") (re.range "0" "9") (str.to.re "+") (str.to.re "/"))) (str.to.re "= HTTP//\x0a"))))
(check-sat)
