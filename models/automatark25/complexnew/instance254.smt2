(declare-const X String)
; (<(!--|script)(.|\n[^<])*(--|script)>)|(<|<)(/?[\w!?]+)\s?[^<]*(>|>)|(\&[\w]+\;)
(assert (str.in.re X (re.union (re.++ (str.to.re "<") (re.union (str.to.re "!--") (str.to.re "script")) (re.* (re.union re.allchar (re.++ (str.to.re "\x0a") (re.comp (str.to.re "<"))))) (re.union (str.to.re "--") (str.to.re "script")) (str.to.re ">")) (re.++ (str.to.re "<") (re.opt (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (re.* (re.comp (str.to.re "<"))) (str.to.re ">") (re.opt (str.to.re "/")) (re.+ (re.union (str.to.re "!") (str.to.re "?") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_")))) (re.++ (str.to.re "\x0a&") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re ";")))))
; Host\x3a\s+hostiedesksearch\.dropspam\.com\x2Fbi\x2Fservlet\x2FThinstall
(assert (str.in.re X (re.++ (str.to.re "Host:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "hostiedesksearch.dropspam.com/bi/servlet/Thinstall\x0a"))))
; <title>+(.*?)</title>
(assert (not (str.in.re X (re.++ (str.to.re "<title") (re.+ (str.to.re ">")) (re.* re.allchar) (str.to.re "</title>\x0a")))))
; ^(1[89]|[2-9]\d)$
(assert (not (str.in.re X (re.++ (re.union (re.++ (str.to.re "1") (re.union (str.to.re "8") (str.to.re "9"))) (re.++ (re.range "2" "9") (re.range "0" "9"))) (str.to.re "\x0a")))))
; urn:[a-z0-9]{1}[a-z0-9\-]{1,31}:[a-z0-9_,:=@;!'%/#\(\)\+\-\.\$\*\?]+
(assert (not (str.in.re X (re.++ (str.to.re "urn:") ((_ re.loop 1 1) (re.union (re.range "a" "z") (re.range "0" "9"))) ((_ re.loop 1 31) (re.union (re.range "a" "z") (re.range "0" "9") (str.to.re "-"))) (str.to.re ":") (re.+ (re.union (re.range "a" "z") (re.range "0" "9") (str.to.re "_") (str.to.re ",") (str.to.re ":") (str.to.re "=") (str.to.re "@") (str.to.re ";") (str.to.re "!") (str.to.re "'") (str.to.re "%") (str.to.re "/") (str.to.re "#") (str.to.re "(") (str.to.re ")") (str.to.re "+") (str.to.re "-") (str.to.re ".") (str.to.re "$") (str.to.re "*") (str.to.re "?"))) (str.to.re "\x0a")))))
(check-sat)
