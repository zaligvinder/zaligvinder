(declare-const X String)
; ([0-9]{1,2}[:][0-9]{1,2}[:]{0,2}[0-9]{0,2}[\s]{0,}[AMPamp]{0,2})
(assert (str.in.re X (re.++ (str.to.re "\x0a") ((_ re.loop 1 2) (re.range "0" "9")) (str.to.re ":") ((_ re.loop 1 2) (re.range "0" "9")) ((_ re.loop 0 2) (str.to.re ":")) ((_ re.loop 0 2) (re.range "0" "9")) (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) ((_ re.loop 0 2) (re.union (str.to.re "A") (str.to.re "M") (str.to.re "P") (str.to.re "a") (str.to.re "m") (str.to.re "p"))))))
; Port\s+AgentHost\x3Ainsertkeys\x3Ckeys\x40hotpop
(assert (not (str.in.re X (re.++ (str.to.re "Port") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "AgentHost:insertkeys<keys@hotpop\x0a")))))
; /\x2e3gp([\?\x5c\x2f]|$)/smiU
(assert (str.in.re X (re.++ (str.to.re "/.3gp") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a"))))
; \x1f\x8b\x08\x00.+\x00\x00
(assert (str.in.re X (re.++ (str.to.re "\x1f\x8b\x08\x00") (re.+ re.allchar) (str.to.re "\x00\x00\x0a"))))
(check-sat)
