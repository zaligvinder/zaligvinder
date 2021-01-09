(declare-const X String)
; \D
(assert (not (str.in.re X (re.++ (re.comp (re.range "0" "9")) (str.to.re "\x0a")))))
; Host\x3A\dtoolbar\x2Ehotblox\x2Ecom\dHost\x3Ahttp\x3A\x2F\x2Fmysearch\.dropspam\.com\x2Findex\.php\?tpid=
(assert (str.in.re X (re.++ (str.to.re "Host:") (re.range "0" "9") (str.to.re "toolbar.hotblox.com") (re.range "0" "9") (str.to.re "Host:http://mysearch.dropspam.com/index.php?tpid=\x13\x0a"))))
; ^[^\s]+@[^\.][^\s]{1,}\.[A-Za-z]{2,10}$
(assert (not (str.in.re X (re.++ (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "@") (re.comp (str.to.re ".")) (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re ".") ((_ re.loop 2 10) (re.union (re.range "A" "Z") (re.range "a" "z"))) (str.to.re "\x0a")))))
(check-sat)
