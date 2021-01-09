(declare-const X String)
; /^([a-zA-Z0-9\.\_\-\&]+)@[a-zA-Z0-9]+\.[a-zA-Z]{3}|(.[a-zA-Z]{2}(\.[a-zA-Z]{2}))$/
(assert (not (str.in.re X (re.union (re.++ (str.to.re "/") (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to.re ".") (str.to.re "_") (str.to.re "-") (str.to.re "&"))) (str.to.re "@") (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9"))) (str.to.re ".") ((_ re.loop 3 3) (re.union (re.range "a" "z") (re.range "A" "Z")))) (re.++ (str.to.re "/\x0a") re.allchar ((_ re.loop 2 2) (re.union (re.range "a" "z") (re.range "A" "Z"))) (str.to.re ".") ((_ re.loop 2 2) (re.union (re.range "a" "z") (re.range "A" "Z"))))))))
; Subject\x3AUser-Agent\x3AiebarSubject\x3A
(assert (not (str.in.re X (str.to.re "Subject:User-Agent:iebarSubject:\x0a"))))
; ^(N[BLSTU]|[AMN]B|[BQ]C|ON|PE|SK)$
(assert (not (str.in.re X (re.++ (re.union (re.++ (str.to.re "N") (re.union (str.to.re "B") (str.to.re "L") (str.to.re "S") (str.to.re "T") (str.to.re "U"))) (re.++ (re.union (str.to.re "A") (str.to.re "M") (str.to.re "N")) (str.to.re "B")) (re.++ (re.union (str.to.re "B") (str.to.re "Q")) (str.to.re "C")) (str.to.re "ON") (str.to.re "PE") (str.to.re "SK")) (str.to.re "\x0a")))))
; /\/3\/[A-Z]{2}\/[a-f0-9]{32}\sHTTP/
(assert (str.in.re X (re.++ (str.to.re "//3/") ((_ re.loop 2 2) (re.range "A" "Z")) (str.to.re "/") ((_ re.loop 32 32) (re.union (re.range "a" "f") (re.range "0" "9"))) (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "HTTP/\x0a"))))
(check-sat)
