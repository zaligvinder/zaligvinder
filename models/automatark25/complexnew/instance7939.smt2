(declare-const X String)
; ^(((\(\d{3}\)|\d{3})( |-|\.))|(\(\d{3}\)|\d{3}))?\d{3}( |-|\.)?\d{4}(( |-|\.)?([Ee]xt|[Xx])[.]?( |-|\.)?\d{4})?$
(assert (not (str.in.re X (re.++ (re.opt (re.union (re.++ (re.union (re.++ (str.to.re "(") ((_ re.loop 3 3) (re.range "0" "9")) (str.to.re ")")) ((_ re.loop 3 3) (re.range "0" "9"))) (re.union (str.to.re " ") (str.to.re "-") (str.to.re "."))) (re.++ (str.to.re "(") ((_ re.loop 3 3) (re.range "0" "9")) (str.to.re ")")) ((_ re.loop 3 3) (re.range "0" "9")))) ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (re.union (str.to.re " ") (str.to.re "-") (str.to.re "."))) ((_ re.loop 4 4) (re.range "0" "9")) (re.opt (re.++ (re.opt (re.union (str.to.re " ") (str.to.re "-") (str.to.re "."))) (re.union (re.++ (re.union (str.to.re "E") (str.to.re "e")) (str.to.re "xt")) (str.to.re "X") (str.to.re "x")) (re.opt (str.to.re ".")) (re.opt (re.union (str.to.re " ") (str.to.re "-") (str.to.re "."))) ((_ re.loop 4 4) (re.range "0" "9")))) (str.to.re "\x0a")))))
; http\x3A\x2F\x2Fmysearch\.dropspam\.com\x2Findex\.php\?tpid=
(assert (not (str.in.re X (str.to.re "http://mysearch.dropspam.com/index.php?tpid=\x13\x0a"))))
(check-sat)
