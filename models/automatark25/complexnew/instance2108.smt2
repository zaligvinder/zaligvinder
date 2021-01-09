(declare-const X String)
; X-Mailer\x3a\s+cyber@yahoo\x2EcomcuAgent
(assert (not (str.in.re X (re.++ (str.to.re "X-Mailer:\x13") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "cyber@yahoo.comcuAgent\x0a")))))
; ^[/]*([^/\\ \:\*\?"\<\>\|\.][^/\\\:\*\?\"\<\>\|]{0,63}/)*[^/\\ \:\*\?"\<\>\|\.][^/\\\:\*\?\"\<\>\|]{0,63}$
(assert (str.in.re X (re.++ (re.* (str.to.re "/")) (re.* (re.++ (re.union (str.to.re "/") (str.to.re "\x5c") (str.to.re " ") (str.to.re ":") (str.to.re "*") (str.to.re "?") (str.to.re "\x22") (str.to.re "<") (str.to.re ">") (str.to.re "|") (str.to.re ".")) ((_ re.loop 0 63) (re.union (str.to.re "/") (str.to.re "\x5c") (str.to.re ":") (str.to.re "*") (str.to.re "?") (str.to.re "\x22") (str.to.re "<") (str.to.re ">") (str.to.re "|"))) (str.to.re "/"))) (re.union (str.to.re "/") (str.to.re "\x5c") (str.to.re " ") (str.to.re ":") (str.to.re "*") (str.to.re "?") (str.to.re "\x22") (str.to.re "<") (str.to.re ">") (str.to.re "|") (str.to.re ".")) ((_ re.loop 0 63) (re.union (str.to.re "/") (str.to.re "\x5c") (str.to.re ":") (str.to.re "*") (str.to.re "?") (str.to.re "\x22") (str.to.re "<") (str.to.re ">") (str.to.re "|"))) (str.to.re "\x0a"))))
; WindowsFrom\x3A\x2FCU1\-extreme\x2Ebiz
(assert (str.in.re X (str.to.re "WindowsFrom:/CU1-extreme.biz\x0a")))
; ^[+-]?\d+(\,\d{3})*\.?\d*\%?$
(assert (str.in.re X (re.++ (re.opt (re.union (str.to.re "+") (str.to.re "-"))) (re.+ (re.range "0" "9")) (re.* (re.++ (str.to.re ",") ((_ re.loop 3 3) (re.range "0" "9")))) (re.opt (str.to.re ".")) (re.* (re.range "0" "9")) (re.opt (str.to.re "%")) (str.to.re "\x0a"))))
; /^USER\x20(XP|98|95|NT|ME|WIN|2K3)\x2d\d+\x20\x2a\x20\x30\x20\x3a/mi
(assert (not (str.in.re X (re.++ (str.to.re "/USER ") (re.union (str.to.re "XP") (str.to.re "98") (str.to.re "95") (str.to.re "NT") (str.to.re "ME") (str.to.re "WIN") (str.to.re "2K3")) (str.to.re "-") (re.+ (re.range "0" "9")) (str.to.re " * 0 :/mi\x0a")))))
(check-sat)
