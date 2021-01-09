(declare-const X String)
; weatherSubject\x3aX-Mailer\x3aTOOLBAR\x2Fnewsurfer4\x2F
(assert (str.in.re X (str.to.re "weatherSubject:X-Mailer:\x13TOOLBAR/newsurfer4/\x0a")))
; XP\d+Acme\s+\x2Fcbn\x2Fnode=Host\x3A\x3Fsearch\x3DversionContact
(assert (not (str.in.re X (re.++ (str.to.re "XP") (re.+ (re.range "0" "9")) (str.to.re "Acme") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "/cbn/node=Host:?search=versionContact\x0a")))))
; ^([a-zA-Z0-9!@#$%^&*()-_=+;:'"|~`<>?/{}]{1,5})$
(assert (not (str.in.re X (re.++ ((_ re.loop 1 5) (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to.re "!") (str.to.re "@") (str.to.re "#") (str.to.re "$") (str.to.re "%") (str.to.re "^") (str.to.re "&") (str.to.re "*") (str.to.re "(") (re.range ")" "_") (str.to.re "=") (str.to.re "+") (str.to.re ";") (str.to.re ":") (str.to.re "'") (str.to.re "\x22") (str.to.re "|") (str.to.re "~") (str.to.re "`") (str.to.re "<") (str.to.re ">") (str.to.re "?") (str.to.re "/") (str.to.re "{") (str.to.re "}"))) (str.to.re "\x0a")))))
; Word\s+User-Agent\x3awww\x2Esogou\x2Ecom
(assert (not (str.in.re X (re.++ (str.to.re "Word") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "User-Agent:www.sogou.com\x0a")))))
; /filename=[^\n]*\x2ejnlp/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".jnlp/i\x0a"))))
(check-sat)
