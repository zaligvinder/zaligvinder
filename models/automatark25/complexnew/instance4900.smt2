(declare-const X String)
; cojud\x2Edmcast\x2EcomAgentHost\x3Ainsertkeys\x3Ckeys\x40hotpop
(assert (not (str.in.re X (str.to.re "cojud.dmcast.comAgentHost:insertkeys<keys@hotpop\x0a"))))
; toolbarplace\x2Ecom[^\n\r]*Server[^\n\r]*X-Mailer\x3a\sUser-Agent\x3aHost\x3ABar\x2Fnewsurfer4\x2F
(assert (not (str.in.re X (re.++ (str.to.re "toolbarplace.com") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "Server") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "X-Mailer:\x13") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "User-Agent:Host:Bar/newsurfer4/\x0a")))))
; dll\x3Fbadurl\x2Egrandstreetinteractive\x2Ecom
(assert (not (str.in.re X (str.to.re "dll?badurl.grandstreetinteractive.com\x0a"))))
; /\x0d\x0aHost\x3a\x20[^\x0d\x0a\x2e]+\x2e[^\x0d\x0a\x2e]+(\x3a\d{1,5})?\x0d\x0a\x0d\x0a$/H
(assert (str.in.re X (re.++ (str.to.re "/\x0d\x0aHost: ") (re.+ (re.union (str.to.re "\x0d") (str.to.re "\x0a") (str.to.re "."))) (str.to.re ".") (re.+ (re.union (str.to.re "\x0d") (str.to.re "\x0a") (str.to.re "."))) (re.opt (re.++ (str.to.re ":") ((_ re.loop 1 5) (re.range "0" "9")))) (str.to.re "\x0d\x0a\x0d\x0a/H\x0a"))))
; ([a-zA-Z0-9\_\-\.]+[a-zA-Z0-9\_\-\.]+[a-zA-Z0-9\_\-\.]+)+@([a-zA-z0-9][a-zA-z0-9][a-zA-z0-9]*)+(\.[a-zA-z0-9][a-zA-z0-9][a-zA-z0-9]*)(\.[a-zA-z0-9]+)*
(assert (str.in.re X (re.++ (re.+ (re.++ (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to.re "_") (str.to.re "-") (str.to.re "."))) (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to.re "_") (str.to.re "-") (str.to.re "."))) (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to.re "_") (str.to.re "-") (str.to.re "."))))) (str.to.re "@") (re.+ (re.++ (re.union (re.range "a" "z") (re.range "A" "z") (re.range "0" "9")) (re.union (re.range "a" "z") (re.range "A" "z") (re.range "0" "9")) (re.* (re.union (re.range "a" "z") (re.range "A" "z") (re.range "0" "9"))))) (re.* (re.++ (str.to.re ".") (re.+ (re.union (re.range "a" "z") (re.range "A" "z") (re.range "0" "9"))))) (str.to.re "\x0a.") (re.union (re.range "a" "z") (re.range "A" "z") (re.range "0" "9")) (re.union (re.range "a" "z") (re.range "A" "z") (re.range "0" "9")) (re.* (re.union (re.range "a" "z") (re.range "A" "z") (re.range "0" "9"))))))
(check-sat)
