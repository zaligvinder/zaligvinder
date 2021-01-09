(declare-const X String)
; [:]{1}[-~+o]?[)>]+
(assert (not (str.in.re X (re.++ ((_ re.loop 1 1) (str.to.re ":")) (re.opt (re.union (str.to.re "-") (str.to.re "~") (str.to.re "+") (str.to.re "o"))) (re.+ (re.union (str.to.re ")") (str.to.re ">"))) (str.to.re "\x0a")))))
; User-Agent\x3AUser-Agent\x3AHost\x3a
(assert (str.in.re X (str.to.re "User-Agent:User-Agent:Host:\x0a")))
; Uin=encodernotification\x2Ftoolbar\x2FHost\x3AUser-Agent\x3A
(assert (not (str.in.re X (str.to.re "Uin=encodernotification\x13/toolbar/Host:User-Agent:\x0a"))))
; ^[0-9]{1,}(,[0-9]+){0,}$
(assert (str.in.re X (re.++ (re.+ (re.range "0" "9")) (re.* (re.++ (str.to.re ",") (re.+ (re.range "0" "9")))) (str.to.re "\x0a"))))
; <a[a-zA-Z0-9 ="'.:;?]*(name=){1}[a-zA-Z0-9 ="'.:;?]*\s*((/>)|(>[a-zA-Z0-9 ="'<>.:;?]*</a>))
(assert (str.in.re X (re.++ (str.to.re "<a") (re.* (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to.re " ") (str.to.re "=") (str.to.re "\x22") (str.to.re "'") (str.to.re ".") (str.to.re ":") (str.to.re ";") (str.to.re "?"))) ((_ re.loop 1 1) (str.to.re "name=")) (re.* (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to.re " ") (str.to.re "=") (str.to.re "\x22") (str.to.re "'") (str.to.re ".") (str.to.re ":") (str.to.re ";") (str.to.re "?"))) (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (re.union (str.to.re "/>") (re.++ (str.to.re ">") (re.* (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to.re " ") (str.to.re "=") (str.to.re "\x22") (str.to.re "'") (str.to.re "<") (str.to.re ">") (str.to.re ".") (str.to.re ":") (str.to.re ";") (str.to.re "?"))) (str.to.re "</a>"))) (str.to.re "\x0a"))))
(check-sat)
