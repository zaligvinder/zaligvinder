(declare-const X String)
; <a[\s]+[^>]*?.*?>([^<]+|.*?)?<\/a>
(assert (not (str.in.re X (re.++ (str.to.re "<a") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (re.* (re.comp (str.to.re ">"))) (re.* re.allchar) (str.to.re ">") (re.opt (re.union (re.+ (re.comp (str.to.re "<"))) (re.* re.allchar))) (str.to.re "</a>\x0a")))))
(check-sat)
