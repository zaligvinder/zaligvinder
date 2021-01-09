(declare-const X String)
; /^\/\d+\.ld$/U
(assert (not (str.in.re X (re.++ (str.to.re "//") (re.+ (re.range "0" "9")) (str.to.re ".ld/U\x0a")))))
; devSoft\x27s\s+Host\x3A\s+Host\x3A
(assert (not (str.in.re X (re.++ (str.to.re "devSoft's\x13") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Host:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Host:\x0a")))))
; ^[^ \\/:*?""<>|]+([ ]+[^ \\/:*?""<>|]+)*$
(assert (not (str.in.re X (re.++ (re.+ (re.union (str.to.re " ") (str.to.re "\x5c") (str.to.re "/") (str.to.re ":") (str.to.re "*") (str.to.re "?") (str.to.re "\x22") (str.to.re "<") (str.to.re ">") (str.to.re "|"))) (re.* (re.++ (re.+ (str.to.re " ")) (re.+ (re.union (str.to.re " ") (str.to.re "\x5c") (str.to.re "/") (str.to.re ":") (str.to.re "*") (str.to.re "?") (str.to.re "\x22") (str.to.re "<") (str.to.re ">") (str.to.re "|"))))) (str.to.re "\x0a")))))
; /filename=[^\n]*\x2eafm/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".afm/i\x0a")))))
; (:[a-z]{1}[a-z1-9\$#_]*){1,31}
(assert (str.in.re X (re.++ ((_ re.loop 1 31) (re.++ (str.to.re ":") ((_ re.loop 1 1) (re.range "a" "z")) (re.* (re.union (re.range "a" "z") (re.range "1" "9") (str.to.re "$") (str.to.re "#") (str.to.re "_"))))) (str.to.re "\x0a"))))
(check-sat)
