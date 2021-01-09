(declare-const X String)
; ^[http|ftp|wap|https]{3,5}:\//\www\.\w*\.[com|net]{2,3}$
(assert (not (str.in.re X (re.++ ((_ re.loop 3 5) (re.union (str.to.re "h") (str.to.re "t") (str.to.re "p") (str.to.re "|") (str.to.re "f") (str.to.re "w") (str.to.re "a") (str.to.re "s"))) (str.to.re "://") (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_")) (str.to.re "ww.") (re.* (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re ".") ((_ re.loop 2 3) (re.union (str.to.re "c") (str.to.re "o") (str.to.re "m") (str.to.re "|") (str.to.re "n") (str.to.re "e") (str.to.re "t"))) (str.to.re "\x0a")))))
(check-sat)
