(declare-const X String)
; /filename=[^\n]*\x2esmi/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".smi/i\x0a"))))
; /filename=[a-z]{5,8}\d{2,3}\.swf\x0d\x0a/Hm
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") ((_ re.loop 5 8) (re.range "a" "z")) ((_ re.loop 2 3) (re.range "0" "9")) (str.to.re ".swf\x0d\x0a/Hm\x0a")))))
; ^[A-Za-z]:\\([^"*/:?|<>\\.\x00-\x20]([^"*/:?|<>\\\x00-\x1F]*[^"*/:?|<>\\.\x00-\x20])?\\)*$
(assert (str.in.re X (re.++ (re.union (re.range "A" "Z") (re.range "a" "z")) (str.to.re ":\x5c") (re.* (re.++ (re.union (str.to.re "\x22") (str.to.re "*") (str.to.re "/") (str.to.re ":") (str.to.re "?") (str.to.re "|") (str.to.re "<") (str.to.re ">") (str.to.re "\x5c") (str.to.re ".") (re.range "\x00" " ")) (re.opt (re.++ (re.* (re.union (str.to.re "\x22") (str.to.re "*") (str.to.re "/") (str.to.re ":") (str.to.re "?") (str.to.re "|") (str.to.re "<") (str.to.re ">") (str.to.re "\x5c") (re.range "\x00" "\x1f"))) (re.union (str.to.re "\x22") (str.to.re "*") (str.to.re "/") (str.to.re ":") (str.to.re "?") (str.to.re "|") (str.to.re "<") (str.to.re ">") (str.to.re "\x5c") (str.to.re ".") (re.range "\x00" " ")))) (str.to.re "\x5c"))) (str.to.re "\x0a"))))
; /\x2eppt([\?\x5c\x2f]|$)/smiU
(assert (str.in.re X (re.++ (str.to.re "/.ppt") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a"))))
(check-sat)
