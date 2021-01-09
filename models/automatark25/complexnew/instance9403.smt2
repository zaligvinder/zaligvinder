(declare-const X String)
; /^\x7b\x22[a-f0-9]{4}\x22\x3a\x22([a-f0-9]{32}|false)\x22,/smiP
(assert (not (str.in.re X (re.++ (str.to.re "/{\x22") ((_ re.loop 4 4) (re.union (re.range "a" "f") (re.range "0" "9"))) (str.to.re "\x22:\x22") (re.union ((_ re.loop 32 32) (re.union (re.range "a" "f") (re.range "0" "9"))) (str.to.re "false")) (str.to.re "\x22,/smiP\x0a")))))
; ^(b|B)(f|F)(p|P)(o|O)(\s|\sC/O\s)[0-9]{1,4}
(assert (not (str.in.re X (re.++ (re.union (str.to.re "b") (str.to.re "B")) (re.union (str.to.re "f") (str.to.re "F")) (re.union (str.to.re "p") (str.to.re "P")) (re.union (str.to.re "o") (str.to.re "O")) ((_ re.loop 1 4) (re.range "0" "9")) (str.to.re "\x0a") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "C/O") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))))))
(check-sat)
