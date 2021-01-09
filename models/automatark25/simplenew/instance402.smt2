(declare-const X String)
; User-Agent\x3aHost\x3Apasswordhavewww\x2Ealfacleaner\x2Ecom
(assert (str.in.re X (str.to.re "User-Agent:Host:passwordhavewww.alfacleaner.com\x0a")))
(check-sat)
