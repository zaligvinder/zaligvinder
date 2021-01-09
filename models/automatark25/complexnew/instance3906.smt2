(declare-const X String)
; Anal\s+news.*User-Agent\x3A
(assert (str.in.re X (re.++ (str.to.re "Anal") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "news") (re.* re.allchar) (str.to.re "User-Agent:\x0a"))))
; ShadowNet\dsearchreslt\sTROJAN-Host\x3AYWRtaW46cGFzc3dvcmQ
(assert (str.in.re X (re.++ (str.to.re "ShadowNet") (re.range "0" "9") (str.to.re "searchreslt") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "TROJAN-Host:YWRtaW46cGFzc3dvcmQ\x0a"))))
; /\?new\=.*?\:.*?\&v\=\d\.\d\.\d\&av\=/U
(assert (not (str.in.re X (re.++ (str.to.re "/?new=") (re.* re.allchar) (str.to.re ":") (re.* re.allchar) (str.to.re "&v=") (re.range "0" "9") (str.to.re ".") (re.range "0" "9") (str.to.re ".") (re.range "0" "9") (str.to.re "&av=/U\x0a")))))
(check-sat)
