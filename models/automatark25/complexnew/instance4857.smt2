(declare-const X String)
; User-Agent\x3AUser-Agent\x3Awww\.take5bingo\.comUser-Agent\x3A
(assert (str.in.re X (str.to.re "User-Agent:User-Agent:www.take5bingo.com\x1bUser-Agent:\x0a")))
; ^(\s*\d\s*){11}$
(assert (not (str.in.re X (re.++ ((_ re.loop 11 11) (re.++ (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (re.range "0" "9") (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))))) (str.to.re "\x0a")))))
; Host\x3A\dMicrosoft\w+\+Version\+
(assert (not (str.in.re X (re.++ (str.to.re "Host:") (re.range "0" "9") (str.to.re "Microsoft") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "+Version+\x0a")))))
; Spy\s+toolbar_domain_redirect
(assert (str.in.re X (re.++ (str.to.re "Spy") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "toolbar_domain_redirect\x0a"))))
(check-sat)
