(declare-const X String)
; User-Agent\x3A\s+www\x2Ewordiq\x2Ecom
(assert (str.in.re X (re.++ (str.to.re "User-Agent:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "www.wordiq.com\x1b\x0a"))))
; WebConnLibNETObserveUser-Agent\x3Ahave100013Agentsvr\x5E\x5EMerlin
(assert (str.in.re X (str.to.re "WebConnLibNETObserveUser-Agent:have100013Agentsvr^^Merlin\x13\x0a")))
; ((http|ftp|https|ftps):\/\/)?[\w\-_\.]+\.(([0-9]{1,3})|([a-zA-Z]{2,3})|(aero|arpa|asia|coop|info|jobs|mobi|museum|name|travel))+(:[0-9]+)?\/?(([\w\-\.,@^%:/~\+#]*[\w\-\@^%/~\+#])((\?[a-zA-Z0-9\[\]\-\._+%\$#\=~',]*=[a-zA-Z0-9\[\]\-\._+%\$#\=~',]*)+(&[a-zA-Z0-9\[\]\-\._+%\$#\=~',]*=[a-zA-Z0-9\[\]\-\._+%\$#\=~',]*)*)?)?
(assert (str.in.re X (re.++ (re.opt (re.++ (re.union (str.to.re "http") (str.to.re "ftp") (str.to.re "https") (str.to.re "ftps")) (str.to.re "://"))) (re.+ (re.union (str.to.re "-") (str.to.re "_") (str.to.re ".") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re ".") (re.+ (re.union ((_ re.loop 1 3) (re.range "0" "9")) ((_ re.loop 2 3) (re.union (re.range "a" "z") (re.range "A" "Z"))) (str.to.re "aero") (str.to.re "arpa") (str.to.re "asia") (str.to.re "coop") (str.to.re "info") (str.to.re "jobs") (str.to.re "mobi") (str.to.re "museum") (str.to.re "name") (str.to.re "travel"))) (re.opt (re.++ (str.to.re ":") (re.+ (re.range "0" "9")))) (re.opt (str.to.re "/")) (re.opt (re.++ (re.opt (re.++ (re.+ (re.++ (str.to.re "?") (re.* (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to.re "[") (str.to.re "]") (str.to.re "-") (str.to.re ".") (str.to.re "_") (str.to.re "+") (str.to.re "%") (str.to.re "$") (str.to.re "#") (str.to.re "=") (str.to.re "~") (str.to.re "'") (str.to.re ","))) (str.to.re "=") (re.* (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to.re "[") (str.to.re "]") (str.to.re "-") (str.to.re ".") (str.to.re "_") (str.to.re "+") (str.to.re "%") (str.to.re "$") (str.to.re "#") (str.to.re "=") (str.to.re "~") (str.to.re "'") (str.to.re ","))))) (re.* (re.++ (str.to.re "&") (re.* (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to.re "[") (str.to.re "]") (str.to.re "-") (str.to.re ".") (str.to.re "_") (str.to.re "+") (str.to.re "%") (str.to.re "$") (str.to.re "#") (str.to.re "=") (str.to.re "~") (str.to.re "'") (str.to.re ","))) (str.to.re "=") (re.* (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to.re "[") (str.to.re "]") (str.to.re "-") (str.to.re ".") (str.to.re "_") (str.to.re "+") (str.to.re "%") (str.to.re "$") (str.to.re "#") (str.to.re "=") (str.to.re "~") (str.to.re "'") (str.to.re ","))))))) (re.* (re.union (str.to.re "-") (str.to.re ".") (str.to.re ",") (str.to.re "@") (str.to.re "^") (str.to.re "%") (str.to.re ":") (str.to.re "/") (str.to.re "~") (str.to.re "+") (str.to.re "#") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (re.union (str.to.re "-") (str.to.re "@") (str.to.re "^") (str.to.re "%") (str.to.re "/") (str.to.re "~") (str.to.re "+") (str.to.re "#") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_")))) (str.to.re "\x0a"))))
; /^\/\d{9,10}\/1\d{9}\.jar$/U
(assert (str.in.re X (re.++ (str.to.re "//") ((_ re.loop 9 10) (re.range "0" "9")) (str.to.re "/1") ((_ re.loop 9 9) (re.range "0" "9")) (str.to.re ".jar/U\x0a"))))
(check-sat)
