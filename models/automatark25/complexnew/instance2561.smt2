(declare-const X String)
; ^(([8]))$|^((([0-7]))$|^((([0-7])).?((25)|(50)|(5)|(75)|(0)|(00))))$
(assert (str.in.re X (re.union (str.to.re "8") (re.++ (re.union (re.range "0" "7") (re.++ (re.range "0" "7") (re.opt re.allchar) (re.union (str.to.re "25") (str.to.re "50") (str.to.re "5") (str.to.re "75") (str.to.re "0") (str.to.re "00")))) (str.to.re "\x0a")))))
; www\x2eproventactics\x2ecom\s+
(assert (str.in.re X (re.++ (str.to.re "www.proventactics.com") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "\x0a"))))
; SystemSleuth1\x2E0versionHost\x3AArrowHost\x3a3Awebsearch\x2Edrsnsrch\x2EcomhostieiWonHost\x3apjpoptwql\x2frlnj
(assert (str.in.re X (str.to.re "SystemSleuth\x131.0versionHost:ArrowHost:3Awebsearch.drsnsrch.com\x13hostieiWonHost:pjpoptwql/rlnj\x0a")))
(check-sat)
