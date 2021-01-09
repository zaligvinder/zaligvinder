(declare-const X String)
; ^((http|https|ftp):\/\/(www\.)?|www\.)[a-zA-Z0-9\_\-]+\.([a-zA-Z]{2,4}|[a-zA-Z]{2}\.[a-zA-Z]{2})(\/[a-zA-Z0-9\-\._\?\&=,'\+%\$#~]*)*$
(assert (str.in.re X (re.++ (re.union (re.++ (re.union (str.to.re "http") (str.to.re "https") (str.to.re "ftp")) (str.to.re "://") (re.opt (str.to.re "www."))) (str.to.re "www.")) (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to.re "_") (str.to.re "-"))) (str.to.re ".") (re.union ((_ re.loop 2 4) (re.union (re.range "a" "z") (re.range "A" "Z"))) (re.++ ((_ re.loop 2 2) (re.union (re.range "a" "z") (re.range "A" "Z"))) (str.to.re ".") ((_ re.loop 2 2) (re.union (re.range "a" "z") (re.range "A" "Z"))))) (re.* (re.++ (str.to.re "/") (re.* (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to.re "-") (str.to.re ".") (str.to.re "_") (str.to.re "?") (str.to.re "&") (str.to.re "=") (str.to.re ",") (str.to.re "'") (str.to.re "+") (str.to.re "%") (str.to.re "$") (str.to.re "#") (str.to.re "~"))))) (str.to.re "\x0a"))))
; Host\x3AUser-Agent\x3Awww\.raxsearch\.com
(assert (not (str.in.re X (str.to.re "Host:User-Agent:www.raxsearch.com\x0a"))))
; ([\r\n ]*//[^\r\n]*)+
(assert (not (str.in.re X (re.++ (re.+ (re.++ (re.* (re.union (str.to.re "\x0d") (str.to.re "\x0a") (str.to.re " "))) (str.to.re "//") (re.* (re.union (str.to.re "\x0d") (str.to.re "\x0a"))))) (str.to.re "\x0a")))))
; (\w(\s)?)+
(assert (str.in.re X (re.++ (re.+ (re.++ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_")) (re.opt (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))))) (str.to.re "\x0a"))))
; eveocczmthmmq\x2fomzl\d\x2Fasp\x2Foffers\.asp\?
(assert (str.in.re X (re.++ (str.to.re "eveocczmthmmq/omzl") (re.range "0" "9") (str.to.re "/asp/offers.asp?\x0a"))))
(check-sat)
