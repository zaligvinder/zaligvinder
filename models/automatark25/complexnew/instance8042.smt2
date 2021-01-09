(declare-const X String)
; /^\x2F40e800[0-9A-F]{30,}$/Ui
(assert (str.in.re X (re.++ (str.to.re "//40e800/Ui\x0a") ((_ re.loop 30 30) (re.union (re.range "0" "9") (re.range "A" "F"))) (re.* (re.union (re.range "0" "9") (re.range "A" "F"))))))
; LIST\]SpamBlockerUtilityTry2FindBasicHost\x3AUser-Agent\x3AAcmeprotocolSpy
(assert (not (str.in.re X (str.to.re "LIST]SpamBlockerUtilityTry2FindBasicHost:User-Agent:AcmeprotocolSpy\x0a"))))
; (^\d{3,5}\,\d{2}$)|(^\d{3,5}$)
(assert (not (str.in.re X (re.union (re.++ ((_ re.loop 3 5) (re.range "0" "9")) (str.to.re ",") ((_ re.loop 2 2) (re.range "0" "9"))) (re.++ ((_ re.loop 3 5) (re.range "0" "9")) (str.to.re "\x0a"))))))
; /\/[a-z]{2}\/testcon.php$/U
(assert (str.in.re X (re.++ (str.to.re "//") ((_ re.loop 2 2) (re.range "a" "z")) (str.to.re "/testcon") re.allchar (str.to.re "php/U\x0a"))))
(check-sat)
