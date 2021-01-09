(declare-const X String)
; Travel\s+version\s+lnzzlnbk\x2fpkrm\.finFILESIZE\x3EM1User-Agent\x3AAgentwww\x2Eweepee\x2EcomOnlineM1Host\x3A
(assert (not (str.in.re X (re.++ (str.to.re "Travel") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "version") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "lnzzlnbk/pkrm.finFILESIZE>\x13M1User-Agent:Agentwww.weepee.com\x1bOnlineM1Host:\x0a")))))
; /domain=[^&]*?([\x3b\x60]|\x24\x28|%3b|%60|%24%28)/Pi
(assert (not (str.in.re X (re.++ (str.to.re "/domain=") (re.* (re.comp (str.to.re "&"))) (re.union (str.to.re "$(") (str.to.re "%3b") (str.to.re "%60") (str.to.re "%24%28") (str.to.re ";") (str.to.re "`")) (str.to.re "/Pi\x0a")))))
; <body[\d\sa-z\W\S\s]*>
(assert (str.in.re X (re.++ (str.to.re "<body") (re.* (re.union (re.range "0" "9") (re.range "a" "z") (re.comp (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (re.comp (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re ">\x0a"))))
; encoder[^\n\r]*\.cfg\s+Host\x3AWeHost\x3a
(assert (not (str.in.re X (re.++ (str.to.re "encoder") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re ".cfg") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Host:WeHost:\x0a")))))
(check-sat)
