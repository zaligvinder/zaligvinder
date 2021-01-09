(declare-const X String)
; /filename=[^\n]*\x2eswf/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".swf/i\x0a"))))
; /\r\nLocation\x3a\x20https\x3a\x2f{2}dl\.dropboxusercontent\.com\/[a-zA-Z\d\x2f]{5,32}\/avcheck\.exe\r\n\r\n$/H
(assert (not (str.in.re X (re.++ (str.to.re "/\x0d\x0aLocation: https:") ((_ re.loop 2 2) (str.to.re "/")) (str.to.re "dl.dropboxusercontent.com/") ((_ re.loop 5 32) (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to.re "/"))) (str.to.re "/avcheck.exe\x0d\x0a\x0d\x0a/H\x0a")))))
; http://www.scribd.com/doc/2569355/Geo-Distance-Search-with-MySQL
(assert (not (str.in.re X (re.++ (str.to.re "http://www") re.allchar (str.to.re "scribd") re.allchar (str.to.re "com/doc/2569355/Geo-Distance-Search-with-MySQL\x0a")))))
(check-sat)
