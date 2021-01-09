(declare-const X String)
; ^(([a-zA-Z]\:)|(\\))(\\{1}|((\\{1})[^\\]([^/:*?<>"|]*))+)$
(assert (str.in.re X (re.++ (re.union (re.++ (re.union (re.range "a" "z") (re.range "A" "Z")) (str.to.re ":")) (str.to.re "\x5c")) (re.union ((_ re.loop 1 1) (str.to.re "\x5c")) (re.+ (re.++ ((_ re.loop 1 1) (str.to.re "\x5c")) (re.comp (str.to.re "\x5c")) (re.* (re.union (str.to.re "/") (str.to.re ":") (str.to.re "*") (str.to.re "?") (str.to.re "<") (str.to.re ">") (str.to.re "\x22") (str.to.re "|")))))) (str.to.re "\x0a"))))
; User-Agent\x3AUser-Agent\x3AHost\x3a
(assert (str.in.re X (str.to.re "User-Agent:User-Agent:Host:\x0a")))
; /filename=[^\n]*\x2epfb/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".pfb/i\x0a")))))
(check-sat)
