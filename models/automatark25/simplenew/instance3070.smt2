(declare-const X String)
; [ ]*=[ ]*[\"]*cid[ ]*:[ ]*([^\"<> ]+)
(assert (not (str.in_re X (re.++ (re.* (str.to_re " ")) (str.to_re "=") (re.* (str.to_re " ")) (re.* (str.to_re "\u{22}")) (str.to_re "cid") (re.* (str.to_re " ")) (str.to_re ":") (re.* (str.to_re " ")) (re.+ (re.union (str.to_re "\u{22}") (str.to_re "<") (str.to_re ">") (str.to_re " "))) (str.to_re "\u{a}")))))
(check-sat)
