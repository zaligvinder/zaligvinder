(declare-const X String)
; ^[A-Z]{1}-[0-9]{7}$
(assert (not (str.in.re X (re.++ ((_ re.loop 1 1) (re.range "A" "Z")) (str.to.re "-") ((_ re.loop 7 7) (re.range "0" "9")) (str.to.re "\x0a")))))
; (\"http:\/\/video\.google\.com\/googleplayer\.swf\?docId=\d{19}\&hl=[a-z]{2}\")
(assert (str.in.re X (re.++ (str.to.re "\x0a\x22http://video.google.com/googleplayer.swf?docId=") ((_ re.loop 19 19) (re.range "0" "9")) (str.to.re "&hl=") ((_ re.loop 2 2) (re.range "a" "z")) (str.to.re "\x22"))))
; /Expression\x28\s*?GetClass\x28\x22sun.awt.SunToolkit\x22\x29\s*?,\s*?\x22getField\x22/smi
(assert (str.in.re X (re.++ (str.to.re "/Expression(") (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "GetClass(\x22sun") re.allchar (str.to.re "awt") re.allchar (str.to.re "SunToolkit\x22)") (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re ",") (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "\x22getField\x22/smi\x0a"))))
(check-sat)
