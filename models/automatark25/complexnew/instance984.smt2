(declare-const X String)
; /\u{2e}htc([\?\u{5c}\u{2f}]|$)/smiU
(assert (str.in_re X (re.++ (str.to_re "/.htc") (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/smiU\u{a}"))))
; [^!~/><\|/#%():;{}`_-]
(assert (not (str.in_re X (re.++ (re.union (str.to_re "!") (str.to_re "~") (str.to_re "/") (str.to_re ">") (str.to_re "<") (str.to_re "|") (str.to_re "#") (str.to_re "%") (str.to_re "(") (str.to_re ")") (str.to_re ":") (str.to_re ";") (str.to_re "{") (str.to_re "}") (str.to_re "`") (str.to_re "_") (str.to_re "-")) (str.to_re "\u{a}")))))
(check-sat)
