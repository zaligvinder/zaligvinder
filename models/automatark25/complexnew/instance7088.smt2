(declare-const X String)
; ^[/]*([^/\\ \:\*\?"\<\>\|\.][^/\\\:\*\?\"\<\>\|]{0,63}/)*[^/\\ \:\*\?"\<\>\|\.][^/\\\:\*\?\"\<\>\|]{0,63}$
(assert (str.in.re X (re.++ (re.* (str.to.re "/")) (re.* (re.++ (re.union (str.to.re "/") (str.to.re "\x5c") (str.to.re " ") (str.to.re ":") (str.to.re "*") (str.to.re "?") (str.to.re "\x22") (str.to.re "<") (str.to.re ">") (str.to.re "|") (str.to.re ".")) ((_ re.loop 0 63) (re.union (str.to.re "/") (str.to.re "\x5c") (str.to.re ":") (str.to.re "*") (str.to.re "?") (str.to.re "\x22") (str.to.re "<") (str.to.re ">") (str.to.re "|"))) (str.to.re "/"))) (re.union (str.to.re "/") (str.to.re "\x5c") (str.to.re " ") (str.to.re ":") (str.to.re "*") (str.to.re "?") (str.to.re "\x22") (str.to.re "<") (str.to.re ">") (str.to.re "|") (str.to.re ".")) ((_ re.loop 0 63) (re.union (str.to.re "/") (str.to.re "\x5c") (str.to.re ":") (str.to.re "*") (str.to.re "?") (str.to.re "\x22") (str.to.re "<") (str.to.re ">") (str.to.re "|"))) (str.to.re "\x0a"))))
; /\x2emanifest([\?\x5c\x2f]|$)/smiU
(assert (str.in.re X (re.++ (str.to.re "/.manifest") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a"))))
; [^A-Za-z0-9 ]
(assert (not (str.in.re X (re.++ (re.union (re.range "A" "Z") (re.range "a" "z") (re.range "0" "9") (str.to.re " ")) (str.to.re "\x0a")))))
(check-sat)
