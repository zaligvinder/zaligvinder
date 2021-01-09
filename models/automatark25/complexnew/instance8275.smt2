(declare-const X String)
; ^\d+(\,\d{1,2})?$
(assert (str.in.re X (re.++ (re.+ (re.range "0" "9")) (re.opt (re.++ (str.to.re ",") ((_ re.loop 1 2) (re.range "0" "9")))) (str.to.re "\x0a"))))
; /(XBOX|Nintendo Wii|smarttv|playstation|hbbtv|philipstv|opera tv|inettv)/
(assert (not (str.in.re X (re.++ (str.to.re "/") (re.union (str.to.re "XBOX") (str.to.re "Nintendo Wii") (str.to.re "smarttv") (str.to.re "playstation") (str.to.re "hbbtv") (str.to.re "philipstv") (str.to.re "opera tv") (str.to.re "inettv")) (str.to.re "/\x0a")))))
; /<body[^>]+?onreadystatechange\s*=.*?<body[^>]+?style\s*=\s*[\x22\x27](-ms-)?behavior\s*:[^\x22\x27]+?[\x22\x27][^>]*?>[\s\t\r\n]*?<\/body/si
(assert (str.in.re X (re.++ (str.to.re "/<body") (re.+ (re.comp (str.to.re ">"))) (str.to.re "onreadystatechange") (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "=") (re.* re.allchar) (str.to.re "<body") (re.+ (re.comp (str.to.re ">"))) (str.to.re "style") (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "=") (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (re.union (str.to.re "\x22") (str.to.re "'")) (re.opt (str.to.re "-ms-")) (str.to.re "behavior") (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re ":") (re.+ (re.union (str.to.re "\x22") (str.to.re "'"))) (re.union (str.to.re "\x22") (str.to.re "'")) (re.* (re.comp (str.to.re ">"))) (str.to.re ">") (re.* (re.union (str.to.re "\x09") (str.to.re "\x0d") (str.to.re "\x0a") (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "</body/si\x0a"))))
; ^\s+|\s+$
(assert (str.in.re X (re.union (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (re.++ (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "\x0a")))))
; ChildWebGuardian\d+Subject\x3A
(assert (str.in.re X (re.++ (str.to.re "ChildWebGuardian") (re.+ (re.range "0" "9")) (str.to.re "Subject:\x0a"))))
(check-sat)
