(declare-const X String)
; \x22reaction\x2Etxt\x22User-Agent\x3AnewsSpyAgentsmrtshpr-cs-
(assert (not (str.in.re X (str.to.re "\x22reaction.txt\x22User-Agent:newsSpyAgentsmrtshpr-cs-\x13\x0a"))))
; www\x2Eemp3finder\x2Ecom\d+ZOMBIES\x5fHTTP\x5fGET
(assert (not (str.in.re X (re.++ (str.to.re "www.emp3finder.com") (re.+ (re.range "0" "9")) (str.to.re "ZOMBIES_HTTP_GET\x0a")))))
; /<body[^>]+?onreadystatechange\s*=.*?<body[^>]+?style\s*=\s*[\x22\x27](-ms-)?behavior\s*:[^\x22\x27]+?[\x22\x27][^>]*?>[\s\t\r\n]*?<\/body/si
(assert (not (str.in.re X (re.++ (str.to.re "/<body") (re.+ (re.comp (str.to.re ">"))) (str.to.re "onreadystatechange") (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "=") (re.* re.allchar) (str.to.re "<body") (re.+ (re.comp (str.to.re ">"))) (str.to.re "style") (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "=") (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (re.union (str.to.re "\x22") (str.to.re "'")) (re.opt (str.to.re "-ms-")) (str.to.re "behavior") (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re ":") (re.+ (re.union (str.to.re "\x22") (str.to.re "'"))) (re.union (str.to.re "\x22") (str.to.re "'")) (re.* (re.comp (str.to.re ">"))) (str.to.re ">") (re.* (re.union (str.to.re "\x09") (str.to.re "\x0d") (str.to.re "\x0a") (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "</body/si\x0a")))))
; User-Agent\x3A\s+Robert
(assert (not (str.in.re X (re.++ (str.to.re "User-Agent:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Robert\x0a")))))
; ^[1-9]{1,2}(.5)?$
(assert (str.in.re X (re.++ ((_ re.loop 1 2) (re.range "1" "9")) (re.opt (re.++ re.allchar (str.to.re "5"))) (str.to.re "\x0a"))))
(check-sat)
