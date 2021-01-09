(declare-const X String)
; searches\x2Eworldtostart\x2Ecom\w+searchreslt\x7D\x7BSysuptime\x3A
(assert (str.in.re X (re.++ (str.to.re "searches.worldtostart.com") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "searchreslt}{Sysuptime:\x0a"))))
; \r\nSTATUS\x3AUser-Agent\x3AHost\x3aReferer\x3A
(assert (not (str.in.re X (str.to.re "\x0d\x0aSTATUS:User-Agent:Host:Referer:\x0a"))))
; /^User\x2DAgent\x3A\s+Ryeol\s+HTTP\s+Client\s+Class/smiH
(assert (not (str.in.re X (re.++ (str.to.re "/User-Agent:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Ryeol") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "HTTP") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Client") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Class/smiH\x0a")))))
; /filename=[^\n]*\x2emp4/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".mp4/i\x0a")))))
(check-sat)
