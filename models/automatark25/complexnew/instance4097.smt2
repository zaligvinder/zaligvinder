(declare-const X String)
; /\x2epct([\?\x5c\x2f]|$)/smiU
(assert (not (str.in.re X (re.++ (str.to.re "/.pct") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a")))))
; (\+)?([-\._\(\) ]?[\d]{3,20}[-\._\(\) ]?){2,10}
(assert (not (str.in.re X (re.++ (re.opt (str.to.re "+")) ((_ re.loop 2 10) (re.++ (re.opt (re.union (str.to.re "-") (str.to.re ".") (str.to.re "_") (str.to.re "(") (str.to.re ")") (str.to.re " "))) ((_ re.loop 3 20) (re.range "0" "9")) (re.opt (re.union (str.to.re "-") (str.to.re ".") (str.to.re "_") (str.to.re "(") (str.to.re ")") (str.to.re " "))))) (str.to.re "\x0a")))))
; ToolbarUser-Agent\x3AFrom\x3A
(assert (str.in.re X (str.to.re "ToolbarUser-Agent:From:\x0a")))
; ^[0-9+]{5}-[0-9+]{7}-[0-9]{1}$
(assert (str.in.re X (re.++ ((_ re.loop 5 5) (re.union (re.range "0" "9") (str.to.re "+"))) (str.to.re "-") ((_ re.loop 7 7) (re.union (re.range "0" "9") (str.to.re "+"))) (str.to.re "-") ((_ re.loop 1 1) (re.range "0" "9")) (str.to.re "\x0a"))))
; ((<body)|(<BODY))([^>]*)>
(assert (not (str.in.re X (re.++ (re.union (str.to.re "<body") (str.to.re "<BODY")) (re.* (re.comp (str.to.re ">"))) (str.to.re ">\x0a")))))
(check-sat)
