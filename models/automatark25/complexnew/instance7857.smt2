(declare-const X String)
; /\x2eswf([\x3f\x2f]|$)/Uim
(assert (str.in.re X (re.++ (str.to.re "/.swf") (re.union (str.to.re "?") (str.to.re "/")) (str.to.re "/Uim\x0a"))))
; Host\x3A.*NETObserve\d+Host\x3aohgdhkzfhdzo\x2fuwpOK\r\n
(assert (str.in.re X (re.++ (str.to.re "Host:") (re.* re.allchar) (str.to.re "NETObserve") (re.+ (re.range "0" "9")) (str.to.re "Host:ohgdhkzfhdzo/uwpOK\x0d\x0a\x0a"))))
; ^[^iIoOqQ'-]{10,17}$
(assert (not (str.in.re X (re.++ ((_ re.loop 10 17) (re.union (str.to.re "i") (str.to.re "I") (str.to.re "o") (str.to.re "O") (str.to.re "q") (str.to.re "Q") (str.to.re "'") (str.to.re "-"))) (str.to.re "\x0a")))))
(check-sat)
