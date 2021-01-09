(declare-const X String)
; /rapidshare\.com\/files\/(\d+)\/([^\'^\"^\s^>^<^\\^\/]+)/
(assert (str.in.re X (re.++ (str.to.re "/rapidshare.com/files/") (re.+ (re.range "0" "9")) (str.to.re "/") (re.+ (re.union (str.to.re "'") (str.to.re "^") (str.to.re "\x22") (str.to.re ">") (str.to.re "<") (str.to.re "\x5c") (str.to.re "/") (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "/\x0a"))))
(check-sat)
