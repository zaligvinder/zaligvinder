(declare-const X String)
; 714|760|949|619|909|951|818|310|323|213|323|562|626-\d{3}-\d{4}
(assert (str.in.re X (re.union (str.to.re "714") (str.to.re "760") (str.to.re "949") (str.to.re "619") (str.to.re "909") (str.to.re "951") (str.to.re "818") (str.to.re "310") (str.to.re "323") (str.to.re "213") (str.to.re "323") (str.to.re "562") (re.++ (str.to.re "626-") ((_ re.loop 3 3) (re.range "0" "9")) (str.to.re "-") ((_ re.loop 4 4) (re.range "0" "9")) (str.to.re "\x0a")))))
; /^\/\w{1,2}\/\w{1,3}\.class$/U
(assert (str.in.re X (re.++ (str.to.re "//") ((_ re.loop 1 2) (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "/") ((_ re.loop 1 3) (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re ".class/U\x0a"))))
; /filename=[^\n]*\x2ejpf/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".jpf/i\x0a")))))
; (DK-?)?([0-9]{2}\ ?){3}[0-9]{2}
(assert (str.in.re X (re.++ (re.opt (re.++ (str.to.re "DK") (re.opt (str.to.re "-")))) ((_ re.loop 3 3) (re.++ ((_ re.loop 2 2) (re.range "0" "9")) (re.opt (str.to.re " ")))) ((_ re.loop 2 2) (re.range "0" "9")) (str.to.re "\x0a"))))
(check-sat)
