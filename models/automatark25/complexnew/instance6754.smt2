(declare-const X String)
; style="[^"]*"|'[^']*'
(assert (not (str.in_re X (re.union (re.++ (str.to_re "style=\u{22}") (re.* (re.comp (str.to_re "\u{22}"))) (str.to_re "\u{22}")) (re.++ (str.to_re "'") (re.* (re.comp (str.to_re "'"))) (str.to_re "'\u{a}"))))))
; ^(sip|sips)\:\+?([\w|\:?\.?\-?\@?\;?\,?\=\%\&]+)
(assert (str.in_re X (re.++ (str.to_re "sips:") (re.opt (str.to_re "+")) (re.+ (re.union (str.to_re "|") (str.to_re ":") (str.to_re "?") (str.to_re ".") (str.to_re "-") (str.to_re "@") (str.to_re ";") (str.to_re ",") (str.to_re "=") (str.to_re "%") (str.to_re "&") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "\u{a}"))))
; (< *balise[ *>|:(.|\n)*>| (.|\n)*>](.|\n)*</balise *>)
(assert (not (str.in_re X (re.++ (str.to_re "\u{a}<") (re.* (str.to_re " ")) (str.to_re "balise") (re.union (str.to_re " ") (str.to_re "*") (str.to_re ">") (str.to_re "|") (str.to_re ":") (str.to_re "(") (str.to_re ".") (str.to_re "\u{a}") (str.to_re ")")) (re.* (re.union re.allchar (str.to_re "\u{a}"))) (str.to_re "</balise") (re.* (str.to_re " ")) (str.to_re ">")))))
(check-sat)
