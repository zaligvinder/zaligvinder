(declare-const X String)
; User-Agent\x3ABasedUser-Agent\x3A
(assert (str.in.re X (str.to.re "User-Agent:BasedUser-Agent:\x0a")))
; /filename=[^\n]*\x2edae/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".dae/i\x0a"))))
; url\(['"]?([\w\d_\-\. ]+)['"]?\)
(assert (not (str.in.re X (re.++ (str.to.re "url(") (re.opt (re.union (str.to.re "'") (str.to.re "\x22"))) (re.+ (re.union (re.range "0" "9") (str.to.re "_") (str.to.re "-") (str.to.re ".") (str.to.re " ") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (re.opt (re.union (str.to.re "'") (str.to.re "\x22"))) (str.to.re ")\x0a")))))
; ^\s*[a-zA-Z0-9,\s]+\s*$
(assert (not (str.in.re X (re.++ (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to.re ",") (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "\x0a")))))
(check-sat)
