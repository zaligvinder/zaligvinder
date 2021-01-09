(declare-const X String)
; ^(|(0[1-9])|(1[0-2]))\/((0[1-9])|(1\d)|(2\d)|(3[0-1]))\/((\d{4}))$
(assert (str.in.re X (re.++ (re.union (re.++ (str.to.re "0") (re.range "1" "9")) (re.++ (str.to.re "1") (re.range "0" "2"))) (str.to.re "/") (re.union (re.++ (str.to.re "0") (re.range "1" "9")) (re.++ (str.to.re "1") (re.range "0" "9")) (re.++ (str.to.re "2") (re.range "0" "9")) (re.++ (str.to.re "3") (re.range "0" "1"))) (str.to.re "/") ((_ re.loop 4 4) (re.range "0" "9")) (str.to.re "\x0a"))))
; /\x2exlsx([\?\x5c\x2f]|$)/smiU
(assert (str.in.re X (re.++ (str.to.re "/.xlsx") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a"))))
; ^[^<>`~!/@\#},.?"-$%:;)(_ ^{&*=|'+]+$
(assert (str.in.re X (re.++ (re.+ (re.union (str.to.re "<") (str.to.re ">") (str.to.re "`") (str.to.re "~") (str.to.re "!") (str.to.re "/") (str.to.re "@") (str.to.re "#") (str.to.re "}") (str.to.re ",") (str.to.re ".") (str.to.re "?") (re.range "\x22" "$") (str.to.re "%") (str.to.re ":") (str.to.re ";") (str.to.re ")") (str.to.re "(") (str.to.re "_") (str.to.re " ") (str.to.re "^") (str.to.re "{") (str.to.re "&") (str.to.re "*") (str.to.re "=") (str.to.re "|") (str.to.re "'") (str.to.re "+"))) (str.to.re "\x0a"))))
; /\x2ewma([\?\x5c\x2f]|$)/smiU
(assert (not (str.in.re X (re.++ (str.to.re "/.wma") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a")))))
(check-sat)
