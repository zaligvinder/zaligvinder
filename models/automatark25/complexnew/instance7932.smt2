(declare-const X String)
; ^[^ \\/:*?""<>|]+([ ]+[^ \\/:*?""<>|]+)*$
(assert (not (str.in.re X (re.++ (re.+ (re.union (str.to.re " ") (str.to.re "\x5c") (str.to.re "/") (str.to.re ":") (str.to.re "*") (str.to.re "?") (str.to.re "\x22") (str.to.re "<") (str.to.re ">") (str.to.re "|"))) (re.* (re.++ (re.+ (str.to.re " ")) (re.+ (re.union (str.to.re " ") (str.to.re "\x5c") (str.to.re "/") (str.to.re ":") (str.to.re "*") (str.to.re "?") (str.to.re "\x22") (str.to.re "<") (str.to.re ">") (str.to.re "|"))))) (str.to.re "\x0a")))))
; (^(49030)[2-9](\d{10}$|\d{12,13}$))
(assert (not (str.in.re X (re.++ (str.to.re "\x0a49030") (re.range "2" "9") (re.union ((_ re.loop 10 10) (re.range "0" "9")) ((_ re.loop 12 13) (re.range "0" "9")))))))
; /^\/\d{9,10}\/1\d{9}\.jar$/U
(assert (not (str.in.re X (re.++ (str.to.re "//") ((_ re.loop 9 10) (re.range "0" "9")) (str.to.re "/1") ((_ re.loop 9 9) (re.range "0" "9")) (str.to.re ".jar/U\x0a")))))
(check-sat)
