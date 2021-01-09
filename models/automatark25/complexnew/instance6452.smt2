(declare-const X String)
; ([A-Z]:\\[^/:\*;\/\:\?<>\|]+)|(\\{2}[^/:\*;\/\:\?<>\|]+)
(assert (str.in.re X (re.union (re.++ (re.range "A" "Z") (str.to.re ":\x5c") (re.+ (re.union (str.to.re "/") (str.to.re ":") (str.to.re "*") (str.to.re ";") (str.to.re "?") (str.to.re "<") (str.to.re ">") (str.to.re "|")))) (re.++ (str.to.re "\x0a") ((_ re.loop 2 2) (str.to.re "\x5c")) (re.+ (re.union (str.to.re "/") (str.to.re ":") (str.to.re "*") (str.to.re ";") (str.to.re "?") (str.to.re "<") (str.to.re ">") (str.to.re "|")))))))
; adserver\.warezclient\.com530Host\x3A
(assert (not (str.in.re X (str.to.re "adserver.warezclient.com530Host:\x0a"))))
; (\<!--\s*.*?((--\>)|$))
(assert (str.in.re X (re.++ (str.to.re "\x0a<!--") (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (re.* re.allchar) (str.to.re "-->"))))
; /^(\x75|\x2d|\x2f|\x73|\xa2|\x2e|\x24|\x74)/sR
(assert (not (str.in.re X (re.++ (str.to.re "/") (re.union (str.to.re "u") (str.to.re "-") (str.to.re "/") (str.to.re "s") (str.to.re "\xa2") (str.to.re ".") (str.to.re "$") (str.to.re "t")) (str.to.re "/sR\x0a")))))
; (\b(10|11|12|13|14|15|16|17|18|19)[0-9]\b)
(assert (str.in.re X (re.++ (str.to.re "\x0a") (re.range "0" "9") (str.to.re "1") (re.union (str.to.re "0") (str.to.re "1") (str.to.re "2") (str.to.re "3") (str.to.re "4") (str.to.re "5") (str.to.re "6") (str.to.re "7") (str.to.re "8") (str.to.re "9")))))
(check-sat)
