(declare-const X String)
; /Content-Disposition\x3a\x20inline\x3b[^\x0d\x0a]filename=[a-z]{5,8}\d{2,3}\.pdf\x0d\x0a/Hm
(assert (str.in.re X (re.++ (str.to.re "/Content-Disposition: inline;") (re.union (str.to.re "\x0d") (str.to.re "\x0a")) (str.to.re "filename=") ((_ re.loop 5 8) (re.range "a" "z")) ((_ re.loop 2 3) (re.range "0" "9")) (str.to.re ".pdf\x0d\x0a/Hm\x0a"))))
; ^[ .a-zA-Z0-9:-]{1,150}$
(assert (str.in.re X (re.++ ((_ re.loop 1 150) (re.union (str.to.re " ") (str.to.re ".") (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to.re ":") (str.to.re "-"))) (str.to.re "\x0a"))))
; ^([0-9]|[1-9][0-9]|[1-9][0-9][0-9])$
(assert (str.in.re X (re.++ (re.union (re.range "0" "9") (re.++ (re.range "1" "9") (re.range "0" "9")) (re.++ (re.range "1" "9") (re.range "0" "9") (re.range "0" "9"))) (str.to.re "\x0a"))))
; Host\x3APortawww\.thecommunicator\.net
(assert (not (str.in.re X (str.to.re "Host:Portawww.thecommunicator.net\x0a"))))
(check-sat)
