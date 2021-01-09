(declare-const X String)
; /filename=[^\n]*\x2evap/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".vap/i\x0a")))))
; Agent\s+\x2Ftoolbar\x2Fico\x2F
(assert (not (str.in.re X (re.++ (str.to.re "Agent") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "/toolbar/ico/\x0a")))))
; User-Agent\x3A[^\n\r]*Host\x3A.*\x2Ftoolbar\x2FHost\x3AUser-Agent\x3A
(assert (not (str.in.re X (re.++ (str.to.re "User-Agent:") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "Host:") (re.* re.allchar) (str.to.re "/toolbar/Host:User-Agent:\x0a")))))
; <a[a-zA-Z0-9 ="'.?_/]*(href\s*=\s*){1}[a-zA-Z0-9 ="'.?_/]*\s*((/>)|(>[a-zA-Z0-9 ="'<>.?_/]*</a>))
(assert (not (str.in.re X (re.++ (str.to.re "<a") (re.* (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to.re " ") (str.to.re "=") (str.to.re "\x22") (str.to.re "'") (str.to.re ".") (str.to.re "?") (str.to.re "_") (str.to.re "/"))) ((_ re.loop 1 1) (re.++ (str.to.re "href") (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "=") (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))))) (re.* (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to.re " ") (str.to.re "=") (str.to.re "\x22") (str.to.re "'") (str.to.re ".") (str.to.re "?") (str.to.re "_") (str.to.re "/"))) (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (re.union (str.to.re "/>") (re.++ (str.to.re ">") (re.* (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to.re " ") (str.to.re "=") (str.to.re "\x22") (str.to.re "'") (str.to.re "<") (str.to.re ">") (str.to.re ".") (str.to.re "?") (str.to.re "_") (str.to.re "/"))) (str.to.re "</a>"))) (str.to.re "\x0a")))))
(check-sat)
