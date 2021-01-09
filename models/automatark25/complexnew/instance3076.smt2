(declare-const X String)
; ^((nntp|sftp|ftp(s)?|http(s)?|gopher|news|file|telnet):\/\/)?(([a-zA-Z0-9\._-]*([a-zA-Z0-9]\.[a-zA-Z0-9])[a-zA-Z]{1,6})|(([0-9]{1,3}\.){3}[0-9]{1,3}))(:\d+)?(\/[^:][^\s]*)?$
(assert (str.in.re X (re.++ (re.opt (re.++ (re.union (str.to.re "nntp") (str.to.re "sftp") (re.++ (str.to.re "ftp") (re.opt (str.to.re "s"))) (re.++ (str.to.re "http") (re.opt (str.to.re "s"))) (str.to.re "gopher") (str.to.re "news") (str.to.re "file") (str.to.re "telnet")) (str.to.re "://"))) (re.union (re.++ (re.* (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to.re ".") (str.to.re "_") (str.to.re "-"))) ((_ re.loop 1 6) (re.union (re.range "a" "z") (re.range "A" "Z"))) (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9")) (str.to.re ".") (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9"))) (re.++ ((_ re.loop 3 3) (re.++ ((_ re.loop 1 3) (re.range "0" "9")) (str.to.re "."))) ((_ re.loop 1 3) (re.range "0" "9")))) (re.opt (re.++ (str.to.re ":") (re.+ (re.range "0" "9")))) (re.opt (re.++ (str.to.re "/") (re.comp (str.to.re ":")) (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))))) (str.to.re "\x0a"))))
; (23:59:59)|([01]{1}[0-9]|2[0-3]):((00)|(15)|(30)|(45))+:(00)
(assert (str.in.re X (re.union (str.to.re "23:59:59") (re.++ (re.union (re.++ ((_ re.loop 1 1) (re.union (str.to.re "0") (str.to.re "1"))) (re.range "0" "9")) (re.++ (str.to.re "2") (re.range "0" "3"))) (str.to.re ":") (re.+ (re.union (str.to.re "00") (str.to.re "15") (str.to.re "30") (str.to.re "45"))) (str.to.re ":00\x0a")))))
; /\.html\?sv=[1-5](\,\d+?){1,3}$/U
(assert (not (str.in.re X (re.++ (str.to.re "/.html?sv=") (re.range "1" "5") ((_ re.loop 1 3) (re.++ (str.to.re ",") (re.+ (re.range "0" "9")))) (str.to.re "/U\x0a")))))
; /filename=[^\n]*\x2ecsv/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".csv/i\x0a"))))
; ^[0-9][0-9,]*[0-9]$
(assert (str.in.re X (re.++ (re.range "0" "9") (re.* (re.union (re.range "0" "9") (str.to.re ","))) (re.range "0" "9") (str.to.re "\x0a"))))
(check-sat)
