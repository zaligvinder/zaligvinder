(declare-const X String)
; ^\(\d{3}\) ?\d{3}( |-)?\d{4}|^\d{3}( |-)?\d{3}( |-)?\d{4}
(assert (not (str.in.re X (re.union (re.++ (str.to.re "(") ((_ re.loop 3 3) (re.range "0" "9")) (str.to.re ")") (re.opt (str.to.re " ")) ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (re.union (str.to.re " ") (str.to.re "-"))) ((_ re.loop 4 4) (re.range "0" "9"))) (re.++ ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (re.union (str.to.re " ") (str.to.re "-"))) ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (re.union (str.to.re " ") (str.to.re "-"))) ((_ re.loop 4 4) (re.range "0" "9")) (str.to.re "\x0a"))))))
; ^[A-G](b|#)?((m(aj)?|M|aug|dim|sus)([2-7]|9|13)?)?(\/[A-G](b|#)?)?$
(assert (not (str.in.re X (re.++ (re.range "A" "G") (re.opt (re.union (str.to.re "b") (str.to.re "#"))) (re.opt (re.++ (re.union (re.++ (str.to.re "m") (re.opt (str.to.re "aj"))) (str.to.re "M") (str.to.re "aug") (str.to.re "dim") (str.to.re "sus")) (re.opt (re.union (re.range "2" "7") (str.to.re "9") (str.to.re "13"))))) (re.opt (re.++ (str.to.re "/") (re.range "A" "G") (re.opt (re.union (str.to.re "b") (str.to.re "#"))))) (str.to.re "\x0a")))))
; Ready[^\n\r]*User-Agent\x3A\s+Client\dFrom\x3AWebtool\x2Eworld2\x2EcnUser-Agent\x3AUser-Agent\x3a
(assert (str.in.re X (re.++ (str.to.re "Ready") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "User-Agent:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Client") (re.range "0" "9") (str.to.re "From:Webtool.world2.cn\x13User-Agent:User-Agent:\x0a"))))
(check-sat)
