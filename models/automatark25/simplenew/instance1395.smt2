(declare-const X String)
; (refs|references|re|closes|closed|close|see|fixes|fixed|fix|addresses) #(\d+)(( and |, | & | )#(\d+))*
(assert (str.in.re X (re.++ (re.union (str.to.re "refs") (str.to.re "references") (str.to.re "re") (str.to.re "closes") (str.to.re "closed") (str.to.re "close") (str.to.re "see") (str.to.re "fixes") (str.to.re "fixed") (str.to.re "fix") (str.to.re "addresses")) (str.to.re " #") (re.+ (re.range "0" "9")) (re.* (re.++ (re.union (str.to.re " and ") (str.to.re ", ") (str.to.re " & ") (str.to.re " ")) (str.to.re "#") (re.+ (re.range "0" "9")))) (str.to.re "\x0a"))))
(check-sat)
