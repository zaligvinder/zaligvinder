(declare-const X String)
; /\x2ehtc([\?\x5c\x2f]|$)/smiU
(assert (str.in.re X (re.++ (str.to.re "/.htc") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a"))))
; [^!~/><\|/#%():;{}`_-]
(assert (not (str.in.re X (re.++ (re.union (str.to.re "!") (str.to.re "~") (str.to.re "/") (str.to.re ">") (str.to.re "<") (str.to.re "|") (str.to.re "#") (str.to.re "%") (str.to.re "(") (str.to.re ")") (str.to.re ":") (str.to.re ";") (str.to.re "{") (str.to.re "}") (str.to.re "`") (str.to.re "_") (str.to.re "-")) (str.to.re "\x0a")))))
(check-sat)
