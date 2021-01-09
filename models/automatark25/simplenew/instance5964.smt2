(declare-const X String)
; ^(/w|/W|[^<>+?$%{}&])+$
(assert (not (str.in.re X (re.++ (re.+ (re.union (str.to.re "/w") (str.to.re "/W") (str.to.re "<") (str.to.re ">") (str.to.re "+") (str.to.re "?") (str.to.re "$") (str.to.re "%") (str.to.re "{") (str.to.re "}") (str.to.re "&"))) (str.to.re "\x0a")))))
(check-sat)
