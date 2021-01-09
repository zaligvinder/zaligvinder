(declare-const X String)
; <[a-zA-Z][^>]*\son\w+=(\w+|'[^']*'|"[^"]*")[^>]*>
(assert (not (str.in.re X (re.++ (str.to.re "<") (re.union (re.range "a" "z") (re.range "A" "Z")) (re.* (re.comp (str.to.re ">"))) (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "on") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "=") (re.union (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (re.++ (str.to.re "'") (re.* (re.comp (str.to.re "'"))) (str.to.re "'")) (re.++ (str.to.re "\x22") (re.* (re.comp (str.to.re "\x22"))) (str.to.re "\x22"))) (re.* (re.comp (str.to.re ">"))) (str.to.re ">\x0a")))))
; /^\/[\w-]{64}$/U
(assert (not (str.in.re X (re.++ (str.to.re "//") ((_ re.loop 64 64) (re.union (str.to.re "-") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "/U\x0a")))))
; LOG\s+spyblini\x2EiniUpdateUser-Agent\x3A
(assert (str.in.re X (re.++ (str.to.re "LOG") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "spyblini.iniUpdateUser-Agent:\x0a"))))
; [0][^0]|([^0]{1}(.){1})|[^0]*
(assert (str.in.re X (re.union (re.++ (str.to.re "0") (re.comp (str.to.re "0"))) (re.++ ((_ re.loop 1 1) (re.comp (str.to.re "0"))) ((_ re.loop 1 1) re.allchar)) (re.++ (re.* (re.comp (str.to.re "0"))) (str.to.re "\x0a")))))
(check-sat)
