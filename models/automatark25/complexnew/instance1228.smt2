(declare-const X String)
; ^(b|B)(f|F)(p|P)(o|O)(\s|\sC/O\s)[0-9]{1,4}
(assert (str.in.re X (re.++ (re.union (str.to.re "b") (str.to.re "B")) (re.union (str.to.re "f") (str.to.re "F")) (re.union (str.to.re "p") (str.to.re "P")) (re.union (str.to.re "o") (str.to.re "O")) ((_ re.loop 1 4) (re.range "0" "9")) (str.to.re "\x0a") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "C/O") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")))))
; User-Agent\x3AUser-Agent\x3a
(assert (str.in.re X (str.to.re "User-Agent:User-Agent:\x0a")))
; iebar\s+Referer\x3aThis
(assert (str.in.re X (re.++ (str.to.re "iebar") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Referer:This\x0a"))))
; ^100$|^[0-9]{1,2}$|^[0-9]{1,2}\,[0-9]{1,3}$
(assert (not (str.in.re X (re.union (str.to.re "100") ((_ re.loop 1 2) (re.range "0" "9")) (re.++ ((_ re.loop 1 2) (re.range "0" "9")) (str.to.re ",") ((_ re.loop 1 3) (re.range "0" "9")) (str.to.re "\x0a"))))))
(check-sat)
