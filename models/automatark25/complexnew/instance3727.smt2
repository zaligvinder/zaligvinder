(declare-const X String)
; /\/[a-f0-9]{32}\.jar/
(assert (str.in.re X (re.++ (str.to.re "//") ((_ re.loop 32 32) (re.union (re.range "a" "f") (re.range "0" "9"))) (str.to.re ".jar/\x0a"))))
; Basic\s+news\s+CD\x2Furl=Host\x3a
(assert (not (str.in.re X (re.++ (str.to.re "Basic") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "news") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "CD/url=Host:\x0a")))))
; ^\w+@[a-zA-Z_]+?\.[a-zA-Z]{2,3}$
(assert (not (str.in.re X (re.++ (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "@") (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (str.to.re "_"))) (str.to.re ".") ((_ re.loop 2 3) (re.union (re.range "a" "z") (re.range "A" "Z"))) (str.to.re "\x0a")))))
; \x2Fbar_pl\x2Fchk\.fcgiHWAEcom\x2Findex\.php\?tpid=
(assert (not (str.in.re X (str.to.re "/bar_pl/chk.fcgiHWAEcom/index.php?tpid=\x0a"))))
(check-sat)
