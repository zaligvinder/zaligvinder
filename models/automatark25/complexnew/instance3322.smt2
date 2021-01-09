(declare-const X String)
; ^(([a-zA-Z]\:)|(\\))(\\{1}|((\\{1})[^\\]([^/:*?<>"|]*))+)$
(assert (str.in.re X (re.++ (re.union (re.++ (re.union (re.range "a" "z") (re.range "A" "Z")) (str.to.re ":")) (str.to.re "\x5c")) (re.union ((_ re.loop 1 1) (str.to.re "\x5c")) (re.+ (re.++ ((_ re.loop 1 1) (str.to.re "\x5c")) (re.comp (str.to.re "\x5c")) (re.* (re.union (str.to.re "/") (str.to.re ":") (str.to.re "*") (str.to.re "?") (str.to.re "<") (str.to.re ">") (str.to.re "\x22") (str.to.re "|")))))) (str.to.re "\x0a"))))
; &#\d{2,5};
(assert (str.in.re X (re.++ (str.to.re "&#") ((_ re.loop 2 5) (re.range "0" "9")) (str.to.re ";\x0a"))))
(check-sat)
