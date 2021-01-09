(declare-const X String)
; ^(/w|/W|[^<>+?$%{}&])+$
(assert (not (str.in.re X (re.++ (re.+ (re.union (str.to.re "/w") (str.to.re "/W") (str.to.re "<") (str.to.re ">") (str.to.re "+") (str.to.re "?") (str.to.re "$") (str.to.re "%") (str.to.re "{") (str.to.re "}") (str.to.re "&"))) (str.to.re "\x0a")))))
; /\x2elnk([\?\x5c\x2f]|$)/smiU
(assert (str.in.re X (re.++ (str.to.re "/.lnk") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a"))))
; Software\s+User-Agent\x3A.*FictionalUser-Agent\x3AUser-Agent\x3a
(assert (not (str.in.re X (re.++ (str.to.re "Software") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "User-Agent:") (re.* re.allchar) (str.to.re "FictionalUser-Agent:User-Agent:\x0a")))))
(check-sat)
