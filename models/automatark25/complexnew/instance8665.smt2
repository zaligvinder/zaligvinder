(declare-const X String)
; /outerhtml\s*?\+\=\s*?\x22/i
(assert (not (str.in.re X (re.++ (str.to.re "/outerhtml") (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "+=") (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "\x22/i\x0a")))))
; (script)|(<)|(>)|(%3c)|(%3e)|(SELECT) |(UPDATE) |(INSERT) |(DELETE)|(GRANT) |(REVOKE)|(UNION)|(&lt;)|(&gt;)
(assert (str.in.re X (re.union (str.to.re "script") (str.to.re "<") (str.to.re ">") (str.to.re "%3c") (str.to.re "%3e") (str.to.re "SELECT ") (str.to.re "UPDATE ") (str.to.re "INSERT ") (str.to.re "DELETE") (str.to.re "GRANT ") (str.to.re "REVOKE") (str.to.re "UNION") (str.to.re "&lt;") (str.to.re "&gt;\x0a"))))
; Xtrawww\x2Einstafinder\x2EcomsearchHost\x3A
(assert (not (str.in.re X (str.to.re "Xtrawww.instafinder.comsearchHost:\x0a"))))
(check-sat)
