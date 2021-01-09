(declare-const X String)
; /filename=[^\n]*\x2eclass/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".class/i\x0a"))))
; from\x3AHost\x3awww\.thecommunicator\.net
(assert (not (str.in.re X (str.to.re "from:Host:www.thecommunicator.net\x0a"))))
; ^(([0-9])|([0-2][0-9])|([3][0-1]))\/(Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sep|Oct|Nov|Dec)\/\d{4}$
(assert (str.in.re X (re.++ (re.union (re.range "0" "9") (re.++ (re.range "0" "2") (re.range "0" "9")) (re.++ (str.to.re "3") (re.range "0" "1"))) (str.to.re "/") (re.union (str.to.re "Jan") (str.to.re "Feb") (str.to.re "Mar") (str.to.re "Apr") (str.to.re "May") (str.to.re "Jun") (str.to.re "Jul") (str.to.re "Aug") (str.to.re "Sep") (str.to.re "Oct") (str.to.re "Nov") (str.to.re "Dec")) (str.to.re "/") ((_ re.loop 4 4) (re.range "0" "9")) (str.to.re "\x0a"))))
; ^(\d)?[ ]*[\(\.\-]?(\d{3})[\)\.\-]?[ ]*(\d{3})[\.\- ]?(\d{4})[ ]*(x|ext\.?)?[ ]*(\d{1,7})?$
(assert (not (str.in.re X (re.++ (re.opt (re.range "0" "9")) (re.* (str.to.re " ")) (re.opt (re.union (str.to.re "(") (str.to.re ".") (str.to.re "-"))) ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (re.union (str.to.re ")") (str.to.re ".") (str.to.re "-"))) (re.* (str.to.re " ")) ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (re.union (str.to.re ".") (str.to.re "-") (str.to.re " "))) ((_ re.loop 4 4) (re.range "0" "9")) (re.* (str.to.re " ")) (re.opt (re.union (str.to.re "x") (re.++ (str.to.re "ext") (re.opt (str.to.re "."))))) (re.* (str.to.re " ")) (re.opt ((_ re.loop 1 7) (re.range "0" "9"))) (str.to.re "\x0a")))))
(check-sat)
