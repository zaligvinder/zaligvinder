(declare-const X String)
; /filename=[^\n]*\x2epaq8o/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".paq8o/i\x0a"))))
; ^(389)[0-9]{11}$
(assert (not (str.in.re X (re.++ (str.to.re "389") ((_ re.loop 11 11) (re.range "0" "9")) (str.to.re "\x0a")))))
; ^\[0-9]{4}\-\[0-9]{2}\-\[0-9]{2}$
(assert (str.in.re X (re.++ (str.to.re "[0-9") ((_ re.loop 4 4) (str.to.re "]")) (str.to.re "-[0-9") ((_ re.loop 2 2) (str.to.re "]")) (str.to.re "-[0-9") ((_ re.loop 2 2) (str.to.re "]")) (str.to.re "\x0a"))))
; Referer\x3A\s+www\x2eproventactics\x2ecom
(assert (not (str.in.re X (re.++ (str.to.re "Referer:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "www.proventactics.com\x0a")))))
; /<body[^>]+?style\s*=\s*[\x22\x27](-ms-)?behavior\s*:.*?<body[^>]+?onreadystatechange\s*=[^>]+?>[\s\t\r\n]*?<\/body/si
(assert (str.in.re X (re.++ (str.to.re "/<body") (re.+ (re.comp (str.to.re ">"))) (str.to.re "style") (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "=") (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (re.union (str.to.re "\x22") (str.to.re "'")) (re.opt (str.to.re "-ms-")) (str.to.re "behavior") (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re ":") (re.* re.allchar) (str.to.re "<body") (re.+ (re.comp (str.to.re ">"))) (str.to.re "onreadystatechange") (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "=") (re.+ (re.comp (str.to.re ">"))) (str.to.re ">") (re.* (re.union (str.to.re "\x09") (str.to.re "\x0d") (str.to.re "\x0a") (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "</body/si\x0a"))))
(check-sat)
