(declare-const X String)
; Host\x3a.*ver\dRobert\dDmInf\x5EinfoSimpsonUser-Agent\x3AClientwww\x2Einternet-optimizer\x2Ecom
(assert (not (str.in.re X (re.++ (str.to.re "Host:") (re.* re.allchar) (str.to.re "ver") (re.range "0" "9") (str.to.re "Robert") (re.range "0" "9") (str.to.re "DmInf^infoSimpsonUser-Agent:Clientwww.internet-optimizer.com\x0a")))))
; /\x2fb\x2fpkg\x2fT202[0-9a-z]{10}/U
(assert (not (str.in.re X (re.++ (str.to.re "//b/pkg/T202") ((_ re.loop 10 10) (re.union (re.range "0" "9") (re.range "a" "z"))) (str.to.re "/U\x0a")))))
; forum=\s+\x2Ftoolbar\x2Fico\x2F
(assert (str.in.re X (re.++ (str.to.re "forum=") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "/toolbar/ico/\x0a"))))
; ^(192\.168\.[0-9]|[1-9][0-9]|[1-2][0-5][0-5]\.[0-9]|[1-9][0-9]|[1-2][0-5][0-5])$
(assert (not (str.in.re X (re.++ (re.union (re.++ (str.to.re "192.168.") (re.range "0" "9")) (re.++ (re.range "1" "9") (re.range "0" "9")) (re.++ (re.range "1" "2") (re.range "0" "5") (re.range "0" "5") (str.to.re ".") (re.range "0" "9")) (re.++ (re.range "1" "9") (re.range "0" "9")) (re.++ (re.range "1" "2") (re.range "0" "5") (re.range "0" "5"))) (str.to.re "\x0a")))))
; /^Host\x3a\x20\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}\r?\n/Hsmi
(assert (str.in.re X (re.++ (str.to.re "/Host: ") ((_ re.loop 1 3) (re.range "0" "9")) (str.to.re ".") ((_ re.loop 1 3) (re.range "0" "9")) (str.to.re ".") ((_ re.loop 1 3) (re.range "0" "9")) (str.to.re ".") ((_ re.loop 1 3) (re.range "0" "9")) (re.opt (str.to.re "\x0d")) (str.to.re "\x0a/Hsmi\x0a"))))
(check-sat)
