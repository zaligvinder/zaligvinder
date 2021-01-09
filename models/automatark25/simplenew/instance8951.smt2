(declare-const X String)
; richfind\x2Ecom\s+Host\x3A.*User-Agent\x3Athroughpjpoptwql\x2frlnj
(assert (str.in.re X (re.++ (str.to.re "richfind.com") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Host:") (re.* re.allchar) (str.to.re "User-Agent:throughpjpoptwql/rlnj\x0a"))))
(check-sat)
