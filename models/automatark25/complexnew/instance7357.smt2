(declare-const X String)
; ^\\([^\\]+\\)*[^\/:*?"<>|]?$
(assert (not (str.in.re X (re.++ (str.to.re "\x5c") (re.* (re.++ (re.+ (re.comp (str.to.re "\x5c"))) (str.to.re "\x5c"))) (re.opt (re.union (str.to.re "/") (str.to.re ":") (str.to.re "*") (str.to.re "?") (str.to.re "\x22") (str.to.re "<") (str.to.re ">") (str.to.re "|"))) (str.to.re "\x0a")))))
; ^[+-]?[0-9]+$
(assert (str.in.re X (re.++ (re.opt (re.union (str.to.re "+") (str.to.re "-"))) (re.+ (re.range "0" "9")) (str.to.re "\x0a"))))
; ^[+]?\d*$
(assert (not (str.in.re X (re.++ (re.opt (str.to.re "+")) (re.* (re.range "0" "9")) (str.to.re "\x0a")))))
; engineResultUser-Agent\x3A
(assert (str.in.re X (str.to.re "engineResultUser-Agent:\x0a")))
(check-sat)
