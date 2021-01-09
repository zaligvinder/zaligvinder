(declare-const X String)
; style="[^"]*"|'[^']*'
(assert (not (str.in.re X (re.union (re.++ (str.to.re "style=\x22") (re.* (re.comp (str.to.re "\x22"))) (str.to.re "\x22")) (re.++ (str.to.re "'") (re.* (re.comp (str.to.re "'"))) (str.to.re "'\x0a"))))))
; ^(sip|sips)\:\+?([\w|\:?\.?\-?\@?\;?\,?\=\%\&]+)
(assert (str.in.re X (re.++ (str.to.re "sips:") (re.opt (str.to.re "+")) (re.+ (re.union (str.to.re "|") (str.to.re ":") (str.to.re "?") (str.to.re ".") (str.to.re "-") (str.to.re "@") (str.to.re ";") (str.to.re ",") (str.to.re "=") (str.to.re "%") (str.to.re "&") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "\x0a"))))
; (< *balise[ *>|:(.|\n)*>| (.|\n)*>](.|\n)*</balise *>)
(assert (not (str.in.re X (re.++ (str.to.re "\x0a<") (re.* (str.to.re " ")) (str.to.re "balise") (re.union (str.to.re " ") (str.to.re "*") (str.to.re ">") (str.to.re "|") (str.to.re ":") (str.to.re "(") (str.to.re ".") (str.to.re "\x0a") (str.to.re ")")) (re.* (re.union re.allchar (str.to.re "\x0a"))) (str.to.re "</balise") (re.* (str.to.re " ")) (str.to.re ">")))))
(check-sat)
