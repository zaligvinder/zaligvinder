(declare-const X String)
; /\u{2F}evil\u{2F}services\u{2F}bid_register\u{2E}php\u{3F}BID\u{3D}[A-Za-z]{6}\u{26}IP\u{3D}\d{1,3}\u{2E}\d{1,3}\u{2E}\d{1,3}\u{2E}\d{1,3}\u{26}cipher\u{3D}[A-Za-z]{9}/smiU
(assert (str.in_re X (re.++ (str.to_re "//evil/services/bid_register.php?BID=") ((_ re.loop 6 6) (re.union (re.range "A" "Z") (re.range "a" "z"))) (str.to_re "&IP=") ((_ re.loop 1 3) (re.range "0" "9")) (str.to_re ".") ((_ re.loop 1 3) (re.range "0" "9")) (str.to_re ".") ((_ re.loop 1 3) (re.range "0" "9")) (str.to_re ".") ((_ re.loop 1 3) (re.range "0" "9")) (str.to_re "&cipher=") ((_ re.loop 9 9) (re.union (re.range "A" "Z") (re.range "a" "z"))) (str.to_re "/smiU\u{a}"))))
(check-sat)
