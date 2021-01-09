(declare-const X String)
; CD\x2F\.ico\x2FsLogearch195\.225\.
(assert (str.in.re X (str.to.re "CD/.ico/sLogearch195.225.\x0a")))
; [D]?[-D]?[0-9]{5}
(assert (not (str.in.re X (re.++ (re.opt (str.to.re "D")) (re.opt (re.union (str.to.re "-") (str.to.re "D"))) ((_ re.loop 5 5) (re.range "0" "9")) (str.to.re "\x0a")))))
; /\.gif\x3f[a-f0-9]{4,7}\x3d\d{6,8}$/U
(assert (not (str.in.re X (re.++ (str.to.re "/.gif?") ((_ re.loop 4 7) (re.union (re.range "a" "f") (re.range "0" "9"))) (str.to.re "=") ((_ re.loop 6 8) (re.range "0" "9")) (str.to.re "/U\x0a")))))
; \w?<\s?\/?[^\s>]+(\s+[^"'=]+(=("[^"]*")|('[^\']*')|([^\s"'>]*))?)*\s*\/?>
(assert (str.in.re X (re.++ (re.opt (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "<") (re.opt (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (re.opt (str.to.re "/")) (re.+ (re.union (str.to.re ">") (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (re.* (re.++ (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (re.+ (re.union (str.to.re "\x22") (str.to.re "'") (str.to.re "="))) (re.opt (re.union (re.++ (str.to.re "=\x22") (re.* (re.comp (str.to.re "\x22"))) (str.to.re "\x22")) (re.++ (str.to.re "'") (re.* (re.comp (str.to.re "'"))) (str.to.re "'")) (re.* (re.union (str.to.re "\x22") (str.to.re "'") (str.to.re ">") (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))))))) (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (re.opt (str.to.re "/")) (str.to.re ">\x0a"))))
; HXLogOnlyDaemonactivityIterenetFrom\x3AClass
(assert (not (str.in.re X (str.to.re "HXLogOnlyDaemonactivityIterenetFrom:Class\x0a"))))
(check-sat)
