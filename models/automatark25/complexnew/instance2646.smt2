(declare-const X String)
; ^([\w\.\-]+)@([\w\-]+)((\.(\w){2,3})+)$
(assert (not (str.in.re X (re.++ (re.+ (re.union (str.to.re ".") (str.to.re "-") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "@") (re.+ (re.union (str.to.re "-") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (re.+ (re.++ (str.to.re ".") ((_ re.loop 2 3) (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))))) (str.to.re "\x0a")))))
; \.fcgi[^\n\r]*Host\x3A\s\x5D\x2520\x5BPort_NETObserveTM_SEARCH3
(assert (not (str.in.re X (re.++ (str.to.re ".fcgi") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "Host:") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "]%20[Port_NETObserveTM_SEARCH3\x0a")))))
; BysooTBwhenu\x2EcomToolbarWeAgentUser-Agent\x3ahasHost\x3atoWebupdate\.cgithis
(assert (not (str.in.re X (str.to.re "BysooTBwhenu.com\x1bToolbarWeAgentUser-Agent:hasHost:toWebupdate.cgithis\x0a"))))
; X-Mailer\x3AisSubject\x3a
(assert (not (str.in.re X (str.to.re "X-Mailer:\x13isSubject:\x0a"))))
; ^(\d){2}-(\d){2}-(\d){2}$
(assert (not (str.in.re X (re.++ ((_ re.loop 2 2) (re.range "0" "9")) (str.to.re "-") ((_ re.loop 2 2) (re.range "0" "9")) (str.to.re "-") ((_ re.loop 2 2) (re.range "0" "9")) (str.to.re "\x0a")))))
(check-sat)
