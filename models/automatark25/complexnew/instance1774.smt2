(declare-const X String)
; /\x2eappendChild.*?\x2eid.{0,200}?(offset|client)(Height|Left|Parent|Top|Width).{0,200}?(offset|client)(Height|Left|Parent|Top|Width)/is
(assert (str.in.re X (re.++ (str.to.re "/.appendChild") (re.* re.allchar) (str.to.re ".id") ((_ re.loop 0 200) re.allchar) (re.union (str.to.re "offset") (str.to.re "client")) (re.union (str.to.re "Height") (str.to.re "Left") (str.to.re "Parent") (str.to.re "Top") (str.to.re "Width")) ((_ re.loop 0 200) re.allchar) (re.union (str.to.re "offset") (str.to.re "client")) (re.union (str.to.re "Height") (str.to.re "Left") (str.to.re "Parent") (str.to.re "Top") (str.to.re "Width")) (str.to.re "/is\x0a"))))
; pjpoptwql\x2frlnjsportsHost\x3ASubject\x3aYAHOOdestroyed\x21
(assert (not (str.in.re X (str.to.re "pjpoptwql/rlnjsportsHost:Subject:YAHOOdestroyed!\x0a"))))
; Host\x3A.*c=[^\n\r]*KeyloggerHost\x3Awww\.trackhits\.cc
(assert (not (str.in.re X (re.++ (str.to.re "Host:") (re.* re.allchar) (str.to.re "c=") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "KeyloggerHost:www.trackhits.cc\x0a")))))
; (^(09|9)[1][1-9]\\d{7}$)|(^(09|9)[3][12456]\\d{7}$)
(assert (str.in.re X (re.union (re.++ (re.union (str.to.re "09") (str.to.re "9")) (str.to.re "1") (re.range "1" "9") (str.to.re "\x5c") ((_ re.loop 7 7) (str.to.re "d"))) (re.++ (str.to.re "\x0a") (re.union (str.to.re "09") (str.to.re "9")) (str.to.re "3") (re.union (str.to.re "1") (str.to.re "2") (str.to.re "4") (str.to.re "5") (str.to.re "6")) (str.to.re "\x5c") ((_ re.loop 7 7) (str.to.re "d"))))))
(check-sat)
