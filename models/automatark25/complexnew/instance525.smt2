(declare-const X String)
; (\"http:\/\/video\.google\.com\/googleplayer\.swf\?docId=\d{19}\&hl=[a-z]{2}\")
(assert (str.in.re X (re.++ (str.to.re "\x0a\x22http://video.google.com/googleplayer.swf?docId=") ((_ re.loop 19 19) (re.range "0" "9")) (str.to.re "&hl=") ((_ re.loop 2 2) (re.range "a" "z")) (str.to.re "\x22"))))
; /filename=[^\n]*\x2efli/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".fli/i\x0a"))))
; /filename=[^\n]*\x2eemf/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".emf/i\x0a"))))
; /\x2eappendChild.*?\x2eid.{0,200}?(offset|client)(Height|Left|Parent|Top|Width).{0,200}?(offset|client)(Height|Left|Parent|Top|Width)/is
(assert (not (str.in.re X (re.++ (str.to.re "/.appendChild") (re.* re.allchar) (str.to.re ".id") ((_ re.loop 0 200) re.allchar) (re.union (str.to.re "offset") (str.to.re "client")) (re.union (str.to.re "Height") (str.to.re "Left") (str.to.re "Parent") (str.to.re "Top") (str.to.re "Width")) ((_ re.loop 0 200) re.allchar) (re.union (str.to.re "offset") (str.to.re "client")) (re.union (str.to.re "Height") (str.to.re "Left") (str.to.re "Parent") (str.to.re "Top") (str.to.re "Width")) (str.to.re "/is\x0a")))))
(check-sat)
