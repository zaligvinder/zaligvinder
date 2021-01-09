(declare-const X String)
; SystemSleuth1\x2E0versionHost\x3AArrowHost\x3a3Awebsearch\x2Edrsnsrch\x2EcomhostieiWonHost\x3apjpoptwql\x2frlnj
(assert (str.in.re X (str.to.re "SystemSleuth\x131.0versionHost:ArrowHost:3Awebsearch.drsnsrch.com\x13hostieiWonHost:pjpoptwql/rlnj\x0a")))
; /^\/\?[a-z0-9]{2}\=[a-z1-9]{100}/siU
(assert (not (str.in.re X (re.++ (str.to.re "//?") ((_ re.loop 2 2) (re.union (re.range "a" "z") (re.range "0" "9"))) (str.to.re "=") ((_ re.loop 100 100) (re.union (re.range "a" "z") (re.range "1" "9"))) (str.to.re "/siU\x0a")))))
; Subject\x3AHost\x3aHost\x3A000Filelogin_ok\x5EMiniCommand
(assert (str.in.re X (str.to.re "Subject:Host:Host:000Filelogin_ok^MiniCommand\x0a")))
; Toolbar[^\n\r]*tvshowtickets\w+weatherHost\x3AUser-Agent\x3Atwfofrfzlugq\x2feve\.qd
(assert (str.in.re X (re.++ (str.to.re "Toolbar") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "tvshowtickets") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "weatherHost:User-Agent:twfofrfzlugq/eve.qd\x0a"))))
; \s*("[^"]+"|[^ ,]+)
(assert (str.in.re X (re.++ (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (re.union (re.++ (str.to.re "\x22") (re.+ (re.comp (str.to.re "\x22"))) (str.to.re "\x22")) (re.+ (re.union (str.to.re " ") (str.to.re ",")))) (str.to.re "\x0a"))))
(check-sat)
