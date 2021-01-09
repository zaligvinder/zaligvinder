(declare-const X String)
; ^[\d]{3}[\s\-]*[\d]{3}[\s\-]*[\d]{4}\s*$
(assert (not (str.in.re X (re.++ ((_ re.loop 3 3) (re.range "0" "9")) (re.* (re.union (str.to.re "-") (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) ((_ re.loop 3 3) (re.range "0" "9")) (re.* (re.union (str.to.re "-") (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) ((_ re.loop 4 4) (re.range "0" "9")) (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "\x0a")))))
; Host\x3A.*rt[^\n\r]*Host\x3AUser-Agent\x3A
(assert (str.in.re X (re.++ (str.to.re "Host:") (re.* re.allchar) (str.to.re "rt") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "Host:User-Agent:\x0a"))))
; /\x2epls([\?\x5c\x2f]|$)/smiU
(assert (not (str.in.re X (re.++ (str.to.re "/.pls") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a")))))
; IDENTIFY.*\/cgi-bin\/PopupV.*Host\x3Asearchreslt
(assert (not (str.in.re X (re.++ (str.to.re "IDENTIFY") (re.* re.allchar) (str.to.re "/cgi-bin/PopupV") (re.* re.allchar) (str.to.re "Host:searchreslt\x0a")))))
(check-sat)
