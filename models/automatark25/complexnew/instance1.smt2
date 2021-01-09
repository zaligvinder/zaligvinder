(declare-const X String)
; 714|760|949|619|909|951|818|310|323|213|323|562|626-\d{3}-\d{4}
(assert (not (str.in.re X (re.union (str.to.re "714") (str.to.re "760") (str.to.re "949") (str.to.re "619") (str.to.re "909") (str.to.re "951") (str.to.re "818") (str.to.re "310") (str.to.re "323") (str.to.re "213") (str.to.re "323") (str.to.re "562") (re.++ (str.to.re "626-") ((_ re.loop 3 3) (re.range "0" "9")) (str.to.re "-") ((_ re.loop 4 4) (re.range "0" "9")) (str.to.re "\x0a"))))))
; \x7D\x7BTrojan\x3A\w+Host\x3A\s\d\x2El
(assert (str.in.re X (re.++ (str.to.re "}{Trojan:") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "Host:") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (re.range "0" "9") (str.to.re ".l\x0a"))))
(check-sat)
