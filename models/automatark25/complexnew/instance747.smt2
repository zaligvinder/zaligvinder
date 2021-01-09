(declare-const X String)
; www\.thecommunicator\.net[^\n\r]*iufilfwulmfi\x2friuf\.lio
(assert (not (str.in.re X (re.++ (str.to.re "www.thecommunicator.net") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "iufilfwulmfi/riuf.lio\x0a")))))
; (http(s?)://|[a-zA-Z0-9\-]+\.)[a-zA-Z0-9/~\-]+\.[a-zA-Z0-9/~\-_,&\?\.;]+[^\.,\s<]
(assert (str.in.re X (re.++ (re.union (re.++ (str.to.re "http") (re.opt (str.to.re "s")) (str.to.re "://")) (re.++ (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to.re "-"))) (str.to.re "."))) (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to.re "/") (str.to.re "~") (str.to.re "-"))) (str.to.re ".") (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to.re "/") (str.to.re "~") (str.to.re "-") (str.to.re "_") (str.to.re ",") (str.to.re "&") (str.to.re "?") (str.to.re ".") (str.to.re ";"))) (re.union (str.to.re ".") (str.to.re ",") (str.to.re "<") (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "\x0a"))))
; DA\dwww\x2Ee-finder\x2Ecc.*User-Agent\x3A
(assert (not (str.in.re X (re.++ (str.to.re "DA") (re.range "0" "9") (str.to.re "www.e-finder.cc") (re.* re.allchar) (str.to.re "User-Agent:\x0a")))))
; /\x2fn\.php\?h=[a-zA-Z0-9]*?\&s=[a-zA-Z0-9]{1,5}$/Ui
(assert (str.in.re X (re.++ (str.to.re "//n.php?h=") (re.* (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9"))) (str.to.re "&s=") ((_ re.loop 1 5) (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9"))) (str.to.re "/Ui\x0a"))))
; ^R(\d){8}
(assert (str.in.re X (re.++ (str.to.re "R") ((_ re.loop 8 8) (re.range "0" "9")) (str.to.re "\x0a"))))
(check-sat)
