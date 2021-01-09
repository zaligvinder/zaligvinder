(declare-const X String)
; ^([A-Z]{2}\s?(\d{2})?(-)?([A-Z]{1}|\d{1})?([A-Z]{1}|\d{1}))$
(assert (not (str.in.re X (re.++ (str.to.re "\x0a") ((_ re.loop 2 2) (re.range "A" "Z")) (re.opt (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (re.opt ((_ re.loop 2 2) (re.range "0" "9"))) (re.opt (str.to.re "-")) (re.opt (re.union ((_ re.loop 1 1) (re.range "A" "Z")) ((_ re.loop 1 1) (re.range "0" "9")))) (re.union ((_ re.loop 1 1) (re.range "A" "Z")) ((_ re.loop 1 1) (re.range "0" "9")))))))
; /^\x2F40e800[0-9A-F]{30,}$/Ui
(assert (not (str.in.re X (re.++ (str.to.re "//40e800/Ui\x0a") ((_ re.loop 30 30) (re.union (re.range "0" "9") (re.range "A" "F"))) (re.* (re.union (re.range "0" "9") (re.range "A" "F")))))))
; fsbuffsearch\x2econduit\x2ecomocllceclbhs\x2fgth
(assert (str.in.re X (str.to.re "fsbuffsearch.conduit.comocllceclbhs/gth\x0a")))
; ^(([0][0-9]|[1][0-2])|[0-9]):([0-5][0-9])( *)((AM|PM)|(A|P))$
(assert (str.in.re X (re.++ (re.union (re.range "0" "9") (re.++ (str.to.re "0") (re.range "0" "9")) (re.++ (str.to.re "1") (re.range "0" "2"))) (str.to.re ":") (re.* (str.to.re " ")) (re.union (str.to.re "AM") (str.to.re "PM") (str.to.re "A") (str.to.re "P")) (str.to.re "\x0a") (re.range "0" "5") (re.range "0" "9"))))
; 714|760|949|619|909|951|818|310|323|213|323|562|626-\d{3}-\d{4}
(assert (not (str.in.re X (re.union (str.to.re "714") (str.to.re "760") (str.to.re "949") (str.to.re "619") (str.to.re "909") (str.to.re "951") (str.to.re "818") (str.to.re "310") (str.to.re "323") (str.to.re "213") (str.to.re "323") (str.to.re "562") (re.++ (str.to.re "626-") ((_ re.loop 3 3) (re.range "0" "9")) (str.to.re "-") ((_ re.loop 4 4) (re.range "0" "9")) (str.to.re "\x0a"))))))
(check-sat)
