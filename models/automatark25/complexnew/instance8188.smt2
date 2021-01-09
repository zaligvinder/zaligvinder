(declare-const X String)
; ^[0-9]*\/{1}[1-9]{1}[0-9]*$
(assert (str.in.re X (re.++ (re.* (re.range "0" "9")) ((_ re.loop 1 1) (str.to.re "/")) ((_ re.loop 1 1) (re.range "1" "9")) (re.* (re.range "0" "9")) (str.to.re "\x0a"))))
; ^[^\\\./:\*\?\"<>\|]{1}[^\\/:\*\?\"<>\|]{0,254}$
(assert (str.in.re X (re.++ ((_ re.loop 1 1) (re.union (str.to.re "\x5c") (str.to.re ".") (str.to.re "/") (str.to.re ":") (str.to.re "*") (str.to.re "?") (str.to.re "\x22") (str.to.re "<") (str.to.re ">") (str.to.re "|"))) ((_ re.loop 0 254) (re.union (str.to.re "\x5c") (str.to.re "/") (str.to.re ":") (str.to.re "*") (str.to.re "?") (str.to.re "\x22") (str.to.re "<") (str.to.re ">") (str.to.re "|"))) (str.to.re "\x0a"))))
; ^(\d*\s*\-?\s*\d*)$
(assert (str.in.re X (re.++ (str.to.re "\x0a") (re.* (re.range "0" "9")) (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (re.opt (str.to.re "-")) (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (re.* (re.range "0" "9")))))
; dl\x2Eweb-nexus\x2Enet\d+www\x2Eonlinecasinoextra\x2Ecomsqlads\.grokads\.com
(assert (str.in.re X (re.++ (str.to.re "dl.web-nexus.net") (re.+ (re.range "0" "9")) (str.to.re "www.onlinecasinoextra.comsqlads.grokads.com\x0a"))))
(check-sat)
