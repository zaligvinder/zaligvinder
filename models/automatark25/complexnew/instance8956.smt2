(declare-const X String)
; ^([0-9]{5})([\-]{1}[0-9]{4})?$
(assert (not (str.in.re X (re.++ ((_ re.loop 5 5) (re.range "0" "9")) (re.opt (re.++ ((_ re.loop 1 1) (str.to.re "-")) ((_ re.loop 4 4) (re.range "0" "9")))) (str.to.re "\x0a")))))
; ^([a-zA-Z]\:|\\)\\([^\\]+\\)*[^\/:*?"<>|]+\.htm(l)?$
(assert (not (str.in.re X (re.++ (re.union (re.++ (re.union (re.range "a" "z") (re.range "A" "Z")) (str.to.re ":")) (str.to.re "\x5c")) (str.to.re "\x5c") (re.* (re.++ (re.+ (re.comp (str.to.re "\x5c"))) (str.to.re "\x5c"))) (re.+ (re.union (str.to.re "/") (str.to.re ":") (str.to.re "*") (str.to.re "?") (str.to.re "\x22") (str.to.re "<") (str.to.re ">") (str.to.re "|"))) (str.to.re ".htm") (re.opt (str.to.re "l")) (str.to.re "\x0a")))))
; /^\/\w{1,2}\/\w{1,3}\.class$/U
(assert (not (str.in.re X (re.++ (str.to.re "//") ((_ re.loop 1 2) (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "/") ((_ re.loop 1 3) (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re ".class/U\x0a")))))
; clvompycem\x2fcen\.vcn.*Host\x3A\s+toolbar_domain_redirectHost\x3a
(assert (str.in.re X (re.++ (str.to.re "clvompycem/cen.vcn") (re.* re.allchar) (str.to.re "Host:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "toolbar_domain_redirectHost:\x0a"))))
(check-sat)
