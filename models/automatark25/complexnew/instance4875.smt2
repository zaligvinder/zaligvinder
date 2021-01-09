(declare-const X String)
; /\x2elzh([\?\x5c\x2f]|$)/smiU
(assert (str.in.re X (re.++ (str.to.re "/.lzh") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a"))))
; ^(102[0-3]|10[0-1]\d|[1-9][0-9]{0,2}|0)$
(assert (str.in.re X (re.++ (re.union (re.++ (str.to.re "102") (re.range "0" "3")) (re.++ (str.to.re "10") (re.range "0" "1") (re.range "0" "9")) (re.++ (re.range "1" "9") ((_ re.loop 0 2) (re.range "0" "9"))) (str.to.re "0")) (str.to.re "\x0a"))))
; /filename=[^\n]*\x2ewma/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".wma/i\x0a"))))
; <!--.*?-->
(assert (str.in.re X (re.++ (str.to.re "<!--") (re.* re.allchar) (str.to.re "-->\x0a"))))
; frame_ver2\s+www\x2eurlblaze\x2enet\s+source\=IncrediFind\s+AgentHost\x3AHost\x3AHost\x3A\x2FGRSpynova3AFrom\x3A
(assert (not (str.in.re X (re.++ (str.to.re "frame_ver2") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "www.urlblaze.net") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "source=IncrediFind") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "AgentHost:Host:Host:/GRSpynova3AFrom:\x0a")))))
(check-sat)
