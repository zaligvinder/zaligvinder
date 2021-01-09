(declare-const X String)
; ^[/]*([^/\\ \:\*\?"\<\>\|\.][^/\\\:\*\?\"\<\>\|]{0,63}/)*[^/\\ \:\*\?"\<\>\|\.][^/\\\:\*\?\"\<\>\|]{0,63}$
(assert (str.in.re X (re.++ (re.* (str.to.re "/")) (re.* (re.++ (re.union (str.to.re "/") (str.to.re "\x5c") (str.to.re " ") (str.to.re ":") (str.to.re "*") (str.to.re "?") (str.to.re "\x22") (str.to.re "<") (str.to.re ">") (str.to.re "|") (str.to.re ".")) ((_ re.loop 0 63) (re.union (str.to.re "/") (str.to.re "\x5c") (str.to.re ":") (str.to.re "*") (str.to.re "?") (str.to.re "\x22") (str.to.re "<") (str.to.re ">") (str.to.re "|"))) (str.to.re "/"))) (re.union (str.to.re "/") (str.to.re "\x5c") (str.to.re " ") (str.to.re ":") (str.to.re "*") (str.to.re "?") (str.to.re "\x22") (str.to.re "<") (str.to.re ">") (str.to.re "|") (str.to.re ".")) ((_ re.loop 0 63) (re.union (str.to.re "/") (str.to.re "\x5c") (str.to.re ":") (str.to.re "*") (str.to.re "?") (str.to.re "\x22") (str.to.re "<") (str.to.re ">") (str.to.re "|"))) (str.to.re "\x0a"))))
; (\d+)?-?(\d+)-(\d+)
(assert (not (str.in.re X (re.++ (re.opt (re.+ (re.range "0" "9"))) (re.opt (str.to.re "-")) (re.+ (re.range "0" "9")) (str.to.re "-") (re.+ (re.range "0" "9")) (str.to.re "\x0a")))))
; /\x2ecgm([\?\x5c\x2f]|$)/smiU
(assert (not (str.in.re X (re.++ (str.to.re "/.cgm") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a")))))
; \.?[a-zA-Z0-9]{1,}$
(assert (not (str.in.re X (re.++ (re.opt (str.to.re ".")) (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9"))) (str.to.re "\x0a")))))
; /Content-Disposition\x3a\x20inline\x3b[^\x0d\x0a]filename=[a-z]{5,8}\d{2,3}\.pdf\x0d\x0a/Hm
(assert (str.in.re X (re.++ (str.to.re "/Content-Disposition: inline;") (re.union (str.to.re "\x0d") (str.to.re "\x0a")) (str.to.re "filename=") ((_ re.loop 5 8) (re.range "a" "z")) ((_ re.loop 2 3) (re.range "0" "9")) (str.to.re ".pdf\x0d\x0a/Hm\x0a"))))
(check-sat)
