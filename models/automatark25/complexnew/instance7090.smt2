(declare-const X String)
; fsbuffsearch\x2econduit\x2ecomocllceclbhs\x2fgth
(assert (str.in.re X (str.to.re "fsbuffsearch.conduit.comocllceclbhs/gth\x0a")))
; ^[http|ftp|wap|https]{3,5}:\//\www\.\w*\.[com|net]{2,3}$
(assert (str.in.re X (re.++ ((_ re.loop 3 5) (re.union (str.to.re "h") (str.to.re "t") (str.to.re "p") (str.to.re "|") (str.to.re "f") (str.to.re "w") (str.to.re "a") (str.to.re "s"))) (str.to.re "://") (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_")) (str.to.re "ww.") (re.* (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re ".") ((_ re.loop 2 3) (re.union (str.to.re "c") (str.to.re "o") (str.to.re "m") (str.to.re "|") (str.to.re "n") (str.to.re "e") (str.to.re "t"))) (str.to.re "\x0a"))))
; ^\d{1,2}\.\d{3}\.\d{3}[-][0-9kK]{1}$
(assert (not (str.in.re X (re.++ ((_ re.loop 1 2) (re.range "0" "9")) (str.to.re ".") ((_ re.loop 3 3) (re.range "0" "9")) (str.to.re ".") ((_ re.loop 3 3) (re.range "0" "9")) (str.to.re "-") ((_ re.loop 1 1) (re.union (re.range "0" "9") (str.to.re "k") (str.to.re "K"))) (str.to.re "\x0a")))))
; /\x2ewri([\?\x5c\x2f]|$)/smiU
(assert (str.in.re X (re.++ (str.to.re "/.wri") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a"))))
(check-sat)
