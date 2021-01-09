(declare-const X String)
; ^[0-4][0-9]{2}[\s][B][P][\s][0-9]{3}$
(assert (not (str.in.re X (re.++ (re.range "0" "4") ((_ re.loop 2 2) (re.range "0" "9")) (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "BP") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) ((_ re.loop 3 3) (re.range "0" "9")) (str.to.re "\x0a")))))
; Host\x3A.*www\x2e2-seek\x2ecom\x2fsearch
(assert (str.in.re X (re.++ (str.to.re "Host:") (re.* re.allchar) (str.to.re "www.2-seek.com/search\x0a"))))
; /filename=[^\n]*\x2eogx/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".ogx/i\x0a"))))
; ^[0-9]{3}[-][0-9]{4}$
(assert (str.in.re X (re.++ ((_ re.loop 3 3) (re.range "0" "9")) (str.to.re "-") ((_ re.loop 4 4) (re.range "0" "9")) (str.to.re "\x0a"))))
; ([1-9]{1,2})?(d|D)([1-9]{1,3})((\+|-)([1-9]{1,3}))?
(assert (not (str.in.re X (re.++ (re.opt ((_ re.loop 1 2) (re.range "1" "9"))) (re.union (str.to.re "d") (str.to.re "D")) ((_ re.loop 1 3) (re.range "1" "9")) (re.opt (re.++ (re.union (str.to.re "+") (str.to.re "-")) ((_ re.loop 1 3) (re.range "1" "9")))) (str.to.re "\x0a")))))
(check-sat)
