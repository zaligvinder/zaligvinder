(declare-const X String)
; Host\x3A\s+User-Agent\x3A\s+ApofisToolbarUserhRatasdbiz\x2Ebizwww\x2Eserverlogic3\x2Ecom
(assert (not (str.in.re X (re.++ (str.to.re "Host:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "User-Agent:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "ApofisToolbarUserhRatasdbiz.bizwww.serverlogic3.com\x0a")))))
(check-sat)
