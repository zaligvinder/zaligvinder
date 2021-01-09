(declare-const X String)
; (\[url=?"?)([^\]"]*)("?\])([^\[]*)(\[/url\])
(assert (str.in.re X (re.++ (re.* (re.union (str.to.re "]") (str.to.re "\x22"))) (re.* (re.comp (str.to.re "["))) (str.to.re "[/url]\x0a[url") (re.opt (str.to.re "=")) (re.opt (str.to.re "\x22")) (re.opt (str.to.re "\x22")) (str.to.re "]"))))
; ^(\d{1,3},)?(\d{3},)+\d{3}(\.\d*)?$|^(\d*)(\.\d*)?$
(assert (not (str.in.re X (re.union (re.++ (re.opt (re.++ ((_ re.loop 1 3) (re.range "0" "9")) (str.to.re ","))) (re.+ (re.++ ((_ re.loop 3 3) (re.range "0" "9")) (str.to.re ","))) ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (re.++ (str.to.re ".") (re.* (re.range "0" "9"))))) (re.++ (re.* (re.range "0" "9")) (re.opt (re.++ (str.to.re ".") (re.* (re.range "0" "9")))) (str.to.re "\x0a"))))))
; /^\x3cmeta\x20name\x3d\x22token\x22\x20content\x3d\x22\xa4[A-F\d]{168}\xa4\x22\x2f\x3e$/
(assert (not (str.in.re X (re.++ (str.to.re "/<meta name=\x22token\x22 content=\x22\xa4") ((_ re.loop 168 168) (re.union (re.range "A" "F") (re.range "0" "9"))) (str.to.re "\xa4\x22/>/\x0a")))))
; /\?new\=.*?\:.*?\&v\=\d\.\d\.\d\&av\=/U
(assert (str.in.re X (re.++ (str.to.re "/?new=") (re.* re.allchar) (str.to.re ":") (re.* re.allchar) (str.to.re "&v=") (re.range "0" "9") (str.to.re ".") (re.range "0" "9") (str.to.re ".") (re.range "0" "9") (str.to.re "&av=/U\x0a"))))
(check-sat)
