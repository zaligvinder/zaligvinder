(declare-const X String)
; ^(([0][0-9]|[1][0-2])|[0-9]):([0-5][0-9])( *)((AM|PM)|(A|P))$
(assert (not (str.in.re X (re.++ (re.union (re.range "0" "9") (re.++ (str.to.re "0") (re.range "0" "9")) (re.++ (str.to.re "1") (re.range "0" "2"))) (str.to.re ":") (re.* (str.to.re " ")) (re.union (str.to.re "AM") (str.to.re "PM") (str.to.re "A") (str.to.re "P")) (str.to.re "\x0a") (re.range "0" "5") (re.range "0" "9")))))
(check-sat)
