(declare-const X String)
; (refs|references|re|closes|closed|close|see|fixes|fixed|fix|addresses) #(\d+)(( and |, | & | )#(\d+))*
(assert (str.in_re X (re.++ (re.union (str.to_re "refs") (str.to_re "references") (str.to_re "re") (str.to_re "closes") (str.to_re "closed") (str.to_re "close") (str.to_re "see") (str.to_re "fixes") (str.to_re "fixed") (str.to_re "fix") (str.to_re "addresses")) (str.to_re " #") (re.+ (re.range "0" "9")) (re.* (re.++ (re.union (str.to_re " and ") (str.to_re ", ") (str.to_re " & ") (str.to_re " ")) (str.to_re "#") (re.+ (re.range "0" "9")))) (str.to_re "\u{a}"))))
(check-sat)
