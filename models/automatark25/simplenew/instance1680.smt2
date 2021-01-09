(declare-const X String)
; 714|760|949|619|909|951|818|310|323|213|323|562|626-\d{3}-\d{4}
(assert (not (str.in.re X (re.union (str.to.re "714") (str.to.re "760") (str.to.re "949") (str.to.re "619") (str.to.re "909") (str.to.re "951") (str.to.re "818") (str.to.re "310") (str.to.re "323") (str.to.re "213") (str.to.re "323") (str.to.re "562") (re.++ (str.to.re "626-") ((_ re.loop 3 3) (re.range "0" "9")) (str.to.re "-") ((_ re.loop 4 4) (re.range "0" "9")) (str.to.re "\x0a"))))))
(check-sat)
