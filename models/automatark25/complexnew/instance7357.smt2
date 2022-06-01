(declare-const X String)
; ^\\([^\\]+\\)*[^\/:*?"<>|]?$
(assert (not (str.in_re X (re.++ (str.to_re "\u{5c}") (re.* (re.++ (re.+ (re.comp (str.to_re "\u{5c}"))) (str.to_re "\u{5c}"))) (re.opt (re.union (str.to_re "/") (str.to_re ":") (str.to_re "*") (str.to_re "?") (str.to_re "\u{22}") (str.to_re "<") (str.to_re ">") (str.to_re "|"))) (str.to_re "\u{a}")))))
; ^[+-]?[0-9]+$
(assert (str.in_re X (re.++ (re.opt (re.union (str.to_re "+") (str.to_re "-"))) (re.+ (re.range "0" "9")) (str.to_re "\u{a}"))))
; ^[+]?\d*$
(assert (not (str.in_re X (re.++ (re.opt (str.to_re "+")) (re.* (re.range "0" "9")) (str.to_re "\u{a}")))))
; engineResultUser-Agent\u{3A}
(assert (str.in_re X (str.to_re "engineResultUser-Agent:\u{a}")))
(check-sat)
