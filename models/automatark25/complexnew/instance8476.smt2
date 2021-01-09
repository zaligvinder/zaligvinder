(declare-const X String)
; SpyBuddySubject\x3Astats\x2edrivecleaner\x2ecom
(assert (not (str.in.re X (str.to.re "SpyBuddySubject:stats.drivecleaner.com\x13\x0a"))))
; ^([\(]{1}[0-9]{3}[\)]{1}[\.| |\-]{0,1}|^[0-9]{3}[\.|\-| ]?)?[0-9]{3}(\.|\-| )?[0-9]{4}$
(assert (str.in.re X (re.++ (re.opt (re.union (re.++ ((_ re.loop 1 1) (str.to.re "(")) ((_ re.loop 3 3) (re.range "0" "9")) ((_ re.loop 1 1) (str.to.re ")")) (re.opt (re.union (str.to.re ".") (str.to.re "|") (str.to.re " ") (str.to.re "-")))) (re.++ ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (re.union (str.to.re ".") (str.to.re "|") (str.to.re "-") (str.to.re " ")))))) ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (re.union (str.to.re ".") (str.to.re "-") (str.to.re " "))) ((_ re.loop 4 4) (re.range "0" "9")) (str.to.re "\x0a"))))
; /\x2emp3([\?\x5c\x2f]|$)/smiU
(assert (not (str.in.re X (re.++ (str.to.re "/.mp3") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a")))))
; filename=\x22Subject\x3awww\x2Eadoptim\x2Ecomreport\x2Fbar_pl\x2Fchk\.fcgi
(assert (str.in.re X (str.to.re "filename=\x22Subject:www.adoptim.comreport/bar_pl/chk.fcgi\x0a")))
(check-sat)
