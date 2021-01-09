(declare-const X String)
; Host\x3aSoftwareHost\x3AjokeWEBCAM-Server\x3a
(assert (not (str.in.re X (str.to.re "Host:SoftwareHost:jokeWEBCAM-Server:\x0a"))))
; Online\x2521\x2521\x2521\sUser-Agent\x3A\d+HXDownloadasdbiz\x2Ebiz
(assert (not (str.in.re X (re.++ (str.to.re "Online%21%21%21") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "User-Agent:") (re.+ (re.range "0" "9")) (str.to.re "HXDownloadasdbiz.biz\x0a")))))
; ^(\d|,)*\.?\d*$
(assert (not (str.in.re X (re.++ (re.* (re.union (re.range "0" "9") (str.to.re ","))) (re.opt (str.to.re ".")) (re.* (re.range "0" "9")) (str.to.re "\x0a")))))
(check-sat)
