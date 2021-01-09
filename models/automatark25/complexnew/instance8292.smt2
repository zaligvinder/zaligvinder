(declare-const X String)
; ^[0-9]{4}\s{0,1}[a-zA-Z]{2}$
(assert (str.in.re X (re.++ ((_ re.loop 4 4) (re.range "0" "9")) (re.opt (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) ((_ re.loop 2 2) (re.union (re.range "a" "z") (re.range "A" "Z"))) (str.to.re "\x0a"))))
; /filename=[^\n]*\x2eram/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".ram/i\x0a"))))
; ^((\d{5}-\d{4})|(\d{5})|([AaBbCcEeGgHhJjKkLlMmNnPpRrSsTtVvXxYy]\d[A-Za-z]\s?\d[A-Za-z]\d))$
(assert (str.in.re X (re.++ (re.union (re.++ ((_ re.loop 5 5) (re.range "0" "9")) (str.to.re "-") ((_ re.loop 4 4) (re.range "0" "9"))) ((_ re.loop 5 5) (re.range "0" "9")) (re.++ (re.union (str.to.re "A") (str.to.re "a") (str.to.re "B") (str.to.re "b") (str.to.re "C") (str.to.re "c") (str.to.re "E") (str.to.re "e") (str.to.re "G") (str.to.re "g") (str.to.re "H") (str.to.re "h") (str.to.re "J") (str.to.re "j") (str.to.re "K") (str.to.re "k") (str.to.re "L") (str.to.re "l") (str.to.re "M") (str.to.re "m") (str.to.re "N") (str.to.re "n") (str.to.re "P") (str.to.re "p") (str.to.re "R") (str.to.re "r") (str.to.re "S") (str.to.re "s") (str.to.re "T") (str.to.re "t") (str.to.re "V") (str.to.re "v") (str.to.re "X") (str.to.re "x") (str.to.re "Y") (str.to.re "y")) (re.range "0" "9") (re.union (re.range "A" "Z") (re.range "a" "z")) (re.opt (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (re.range "0" "9") (re.union (re.range "A" "Z") (re.range "a" "z")) (re.range "0" "9"))) (str.to.re "\x0a"))))
; A-311[^\n\r]*Attached\sHost\x3AWordmyway\.comhoroscope2
(assert (str.in.re X (re.++ (str.to.re "A-311") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "Attached") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "Host:Wordmyway.comhoroscope2\x0a"))))
; ((IT|LV)-?)?[0-9]{11}
(assert (str.in.re X (re.++ (re.opt (re.++ (re.union (str.to.re "IT") (str.to.re "LV")) (re.opt (str.to.re "-")))) ((_ re.loop 11 11) (re.range "0" "9")) (str.to.re "\x0a"))))
(check-sat)
