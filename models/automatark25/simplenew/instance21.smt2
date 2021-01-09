(declare-const X String)
; ((\d{0}[0-9]|\d{0}[1]\d{0}[0-2])(\:)\d{0}[0-5]\d{0}[0-9](\:)\d{0}[0-5]\d{0}[0-9]\s(AM|PM))
(assert (str.in.re X (re.++ (str.to.re "\x0a") (re.union (re.++ ((_ re.loop 0 0) (re.range "0" "9")) (re.range "0" "9")) (re.++ ((_ re.loop 0 0) (re.range "0" "9")) (str.to.re "1") ((_ re.loop 0 0) (re.range "0" "9")) (re.range "0" "2"))) (str.to.re ":") ((_ re.loop 0 0) (re.range "0" "9")) (re.range "0" "5") ((_ re.loop 0 0) (re.range "0" "9")) (re.range "0" "9") (str.to.re ":") ((_ re.loop 0 0) (re.range "0" "9")) (re.range "0" "5") ((_ re.loop 0 0) (re.range "0" "9")) (re.range "0" "9") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (re.union (str.to.re "AM") (str.to.re "PM")))))
(check-sat)
