(declare-const X String)
; /\/[0-9A-F]{24}/Ui
(assert (not (str.in.re X (re.++ (str.to.re "//") ((_ re.loop 24 24) (re.union (re.range "0" "9") (re.range "A" "F"))) (str.to.re "/Ui\x0a")))))
; .*\$AVE|\$ave.*
(assert (not (str.in.re X (re.union (re.++ (re.* re.allchar) (str.to.re "$AVE")) (re.++ (str.to.re "$ave") (re.* re.allchar) (str.to.re "\x0a"))))))
; version\s+error\*\-\*WrongUser-Agent\x3Acom\x2Findex\.php\?tpid=
(assert (str.in.re X (re.++ (str.to.re "version") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "error*-*WrongUser-Agent:com/index.php?tpid=\x0a"))))
; \$(\d)*\d
(assert (str.in.re X (re.++ (str.to.re "$") (re.* (re.range "0" "9")) (re.range "0" "9") (str.to.re "\x0a"))))
(check-sat)
