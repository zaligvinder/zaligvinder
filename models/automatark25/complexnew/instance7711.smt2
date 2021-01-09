(declare-const X String)
; ^([0-1])*$
(assert (not (str.in.re X (re.++ (re.* (re.range "0" "1")) (str.to.re "\x0a")))))
; ^(b|B)(f|F)(p|P)(o|O)(\s|\sC/O\s)[0-9]{1,4}
(assert (not (str.in.re X (re.++ (re.union (str.to.re "b") (str.to.re "B")) (re.union (str.to.re "f") (str.to.re "F")) (re.union (str.to.re "p") (str.to.re "P")) (re.union (str.to.re "o") (str.to.re "O")) ((_ re.loop 1 4) (re.range "0" "9")) (str.to.re "\x0a") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "C/O") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))))))
; zmnjgmomgbdz\x2fzzmw\.gzt.*www\x2Ealtnet\x2Ecom.*User-Agent\x3A
(assert (str.in.re X (re.++ (str.to.re "zmnjgmomgbdz/zzmw.gzt") (re.* re.allchar) (str.to.re "www.altnet.com\x1b") (re.* re.allchar) (str.to.re "User-Agent:\x0a"))))
; downloads\x2Emorpheus\x2Ecom\x2Frotation
(assert (not (str.in.re X (str.to.re "downloads.morpheus.com/rotation\x0a"))))
(check-sat)
