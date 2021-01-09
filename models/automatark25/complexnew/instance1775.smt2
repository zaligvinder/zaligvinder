(declare-const X String)
; SystemSleuth1\x2E0versionHost\x3AArrowHost\x3a3Awebsearch\x2Edrsnsrch\x2EcomhostieiWonHost\x3apjpoptwql\x2frlnj
(assert (not (str.in.re X (str.to.re "SystemSleuth\x131.0versionHost:ArrowHost:3Awebsearch.drsnsrch.com\x13hostieiWonHost:pjpoptwql/rlnj\x0a"))))
; /^Referer\x3a[^\r\n]+\/[\w_]{32,}\.html\r$/Hsm
(assert (not (str.in.re X (re.++ (str.to.re "/Referer:") (re.+ (re.union (str.to.re "\x0d") (str.to.re "\x0a"))) (str.to.re "/.html\x0d/Hsm\x0a") ((_ re.loop 32 32) (re.union (str.to.re "_") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (re.* (re.union (str.to.re "_") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_")))))))
(check-sat)
