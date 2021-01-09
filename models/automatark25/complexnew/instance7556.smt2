(declare-const X String)
; /\?new\=.*?\:.*?\&v\=\d\.\d\.\d\&av\=/U
(assert (str.in.re X (re.++ (str.to.re "/?new=") (re.* re.allchar) (str.to.re ":") (re.* re.allchar) (str.to.re "&v=") (re.range "0" "9") (str.to.re ".") (re.range "0" "9") (str.to.re ".") (re.range "0" "9") (str.to.re "&av=/U\x0a"))))
; kwd\s+User-Agent\x3Aregister\.aspUser-Agent\x3A
(assert (str.in.re X (re.++ (str.to.re "kwd") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "User-Agent:register.aspUser-Agent:\x0a"))))
(check-sat)
