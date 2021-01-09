(declare-const X String)
; Monitor\s+SupervisorPalUser-Agent\x3A
(assert (str.in.re X (re.++ (str.to.re "Monitor") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "SupervisorPalUser-Agent:\x0a"))))
; ^(/w|/W|[^<>+?$%{}&])+$
(assert (not (str.in.re X (re.++ (re.+ (re.union (str.to.re "/w") (str.to.re "/W") (str.to.re "<") (str.to.re ">") (str.to.re "+") (str.to.re "?") (str.to.re "$") (str.to.re "%") (str.to.re "{") (str.to.re "}") (str.to.re "&"))) (str.to.re "\x0a")))))
; for.*www\x2Eeblocs\x2Ecom\d\x2Fiis2ebs\.asp\d\<title\>Actual\x2Fpagead\x2Fads\?search2\.ad\.shopnav\.com\x2F9899\x2Fsearch\x2Fresults\.php
(assert (not (str.in.re X (re.++ (str.to.re "for") (re.* re.allchar) (str.to.re "www.eblocs.com\x1b") (re.range "0" "9") (str.to.re "/iis2ebs.asp") (re.range "0" "9") (str.to.re "<title>Actual/pagead/ads?search2.ad.shopnav.com/9899/search/results.php\x0a")))))
(check-sat)
