(declare-const X String)
; /\u{2e}pct([\?\u{5c}\u{2f}]|$)/smiU
(assert (not (str.in_re X (re.++ (str.to_re "/.pct") (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/smiU\u{a}")))))
; (\+)?([-\._\(\) ]?[\d]{3,20}[-\._\(\) ]?){2,10}
(assert (not (str.in_re X (re.++ (re.opt (str.to_re "+")) ((_ re.loop 2 10) (re.++ (re.opt (re.union (str.to_re "-") (str.to_re ".") (str.to_re "_") (str.to_re "(") (str.to_re ")") (str.to_re " "))) ((_ re.loop 3 20) (re.range "0" "9")) (re.opt (re.union (str.to_re "-") (str.to_re ".") (str.to_re "_") (str.to_re "(") (str.to_re ")") (str.to_re " "))))) (str.to_re "\u{a}")))))
; ToolbarUser-Agent\u{3A}From\u{3A}
(assert (str.in_re X (str.to_re "ToolbarUser-Agent:From:\u{a}")))
; ^[0-9+]{5}-[0-9+]{7}-[0-9]{1}$
(assert (str.in_re X (re.++ ((_ re.loop 5 5) (re.union (re.range "0" "9") (str.to_re "+"))) (str.to_re "-") ((_ re.loop 7 7) (re.union (re.range "0" "9") (str.to_re "+"))) (str.to_re "-") ((_ re.loop 1 1) (re.range "0" "9")) (str.to_re "\u{a}"))))
; ((<body)|(<BODY))([^>]*)>
(assert (not (str.in_re X (re.++ (re.union (str.to_re "<body") (str.to_re "<BODY")) (re.* (re.comp (str.to_re ">"))) (str.to_re ">\u{a}")))))
(check-sat)
