(declare-const X String)
; www.*tool\x2Eworld2\x2Ecn
(assert (str.in.re X (re.++ (str.to.re "www") (re.* re.allchar) (str.to.re "tool.world2.cn\x13\x0a"))))
; DISK\s+\x2Fcgi\x2Flogurl\.cgiSubject\x3AinsertX-Mailer\x3A
(assert (str.in.re X (re.++ (str.to.re "DISK") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "/cgi/logurl.cgiSubject:insertX-Mailer:\x13\x0a"))))
; ^(http(s?):\/\/)?(www\.)?youtu(be)?\.([a-z])+\/(watch(.*?)(\?|\&)v=)?(.*?)(&(.)*)?$
(assert (not (str.in.re X (re.++ (re.opt (re.++ (str.to.re "http") (re.opt (str.to.re "s")) (str.to.re "://"))) (re.opt (str.to.re "www.")) (str.to.re "youtu") (re.opt (str.to.re "be")) (str.to.re ".") (re.+ (re.range "a" "z")) (str.to.re "/") (re.opt (re.++ (str.to.re "watch") (re.* re.allchar) (re.union (str.to.re "?") (str.to.re "&")) (str.to.re "v="))) (re.* re.allchar) (re.opt (re.++ (str.to.re "&") (re.* re.allchar))) (str.to.re "\x0a")))))
(check-sat)
