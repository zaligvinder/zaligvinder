(declare-const X String)
; /\x2emp4([\?\x5c\x2f]|$)/smiU
(assert (not (str.in.re X (re.++ (str.to.re "/.mp4") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a")))))
; \x2Fpagead\x2Fads\?search2\.ad\.shopnav\.com\x2F9899\x2Fsearch\x2Fresults\.php
(assert (not (str.in.re X (str.to.re "/pagead/ads?search2.ad.shopnav.com/9899/search/results.php\x0a"))))
(check-sat)
