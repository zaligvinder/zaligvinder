(declare-const X String)
; WebsiteUser-Agent\x3Ahttphostfast-look\x2Ecom
(assert (not (str.in.re X (str.to.re "WebsiteUser-Agent:httphostfast-look.com\x0a"))))
; ^(\+[1-9]\d+) ([1-9]\d+) ([1-9]\d+)(\-\d+){0,1}$|^(0\d+) ([1-9]\d+)(\-\d+){0,1}$|^([1-9]\d+)(\-\d+){0,1}$
(assert (str.in.re X (re.union (re.++ (str.to.re "  ") (re.opt (re.++ (str.to.re "-") (re.+ (re.range "0" "9")))) (str.to.re "+") (re.range "1" "9") (re.+ (re.range "0" "9")) (re.range "1" "9") (re.+ (re.range "0" "9")) (re.range "1" "9") (re.+ (re.range "0" "9"))) (re.++ (str.to.re " ") (re.opt (re.++ (str.to.re "-") (re.+ (re.range "0" "9")))) (str.to.re "0") (re.+ (re.range "0" "9")) (re.range "1" "9") (re.+ (re.range "0" "9"))) (re.++ (re.opt (re.++ (str.to.re "-") (re.+ (re.range "0" "9")))) (str.to.re "\x0a") (re.range "1" "9") (re.+ (re.range "0" "9"))))))
; /\x2epjpeg([\?\x5c\x2f]|$)/smiU
(assert (not (str.in.re X (re.++ (str.to.re "/.pjpeg") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a")))))
; Host\x3A.*NETObserve\d+Host\x3aohgdhkzfhdzo\x2fuwpOK\r\n
(assert (not (str.in.re X (re.++ (str.to.re "Host:") (re.* re.allchar) (str.to.re "NETObserve") (re.+ (re.range "0" "9")) (str.to.re "Host:ohgdhkzfhdzo/uwpOK\x0d\x0a\x0a")))))
(check-sat)
