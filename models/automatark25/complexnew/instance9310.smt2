(declare-const X String)
; /filename\=[a-z0-9]{24}\.exe/H
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") ((_ re.loop 24 24) (re.union (re.range "a" "z") (re.range "0" "9"))) (str.to.re ".exe/H\x0a")))))
; (http(s?)://|[a-zA-Z0-9\-]+\.)[a-zA-Z0-9/~\-]+\.[a-zA-Z0-9/~\-_,&\?\.;]+[^\.,\s<]
(assert (str.in.re X (re.++ (re.union (re.++ (str.to.re "http") (re.opt (str.to.re "s")) (str.to.re "://")) (re.++ (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to.re "-"))) (str.to.re "."))) (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to.re "/") (str.to.re "~") (str.to.re "-"))) (str.to.re ".") (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to.re "/") (str.to.re "~") (str.to.re "-") (str.to.re "_") (str.to.re ",") (str.to.re "&") (str.to.re "?") (str.to.re ".") (str.to.re ";"))) (re.union (str.to.re ".") (str.to.re ",") (str.to.re "<") (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "\x0a"))))
(check-sat)
