(declare-const X String)
; <a[\s]+[^>]*?.*?>([^<]+|.*?)?<\/a>
(assert (not (str.in_re X (re.++ (str.to_re "<a") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (re.* (re.comp (str.to_re ">"))) (re.* re.allchar) (str.to_re ">") (re.opt (re.union (re.+ (re.comp (str.to_re "<"))) (re.* re.allchar))) (str.to_re "</a>\u{a}")))))
(check-sat)
