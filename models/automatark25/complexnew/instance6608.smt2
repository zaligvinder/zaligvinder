(declare-const X String)
; port\s+aresflashdownloader\x2Ecom\s+adfsgecoiwnf\x23\x23\x23\x23User-Agent\x3A
(assert (not (str.in.re X (re.++ (str.to.re "port") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "aresflashdownloader.com") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "adfsgecoiwnf\x1b####User-Agent:\x0a")))))
; (^(30)[0-5]\d{11}$)|(^(36)\d{12}$)|(^(38[0-8])\d{11}$)
(assert (not (str.in.re X (re.union (re.++ (str.to.re "30") (re.range "0" "5") ((_ re.loop 11 11) (re.range "0" "9"))) (re.++ (str.to.re "36") ((_ re.loop 12 12) (re.range "0" "9"))) (re.++ (str.to.re "\x0a") ((_ re.loop 11 11) (re.range "0" "9")) (str.to.re "38") (re.range "0" "8"))))))
; /^(application|audio|example|image|message|model|multipart|text|video)\/[a-zA-Z0-9]+([+.-][a-zA-z0-9]+)*$/
(assert (str.in.re X (re.++ (str.to.re "/") (re.union (str.to.re "application") (str.to.re "audio") (str.to.re "example") (str.to.re "image") (str.to.re "message") (str.to.re "model") (str.to.re "multipart") (str.to.re "text") (str.to.re "video")) (str.to.re "/") (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9"))) (re.* (re.++ (re.union (str.to.re "+") (str.to.re ".") (str.to.re "-")) (re.+ (re.union (re.range "a" "z") (re.range "A" "z") (re.range "0" "9"))))) (str.to.re "/\x0a"))))
; www\x2Eblazefind\x2Ecom.*started\x2E\s+CodeguruBrowserwww\x2Esogou\x2Ecom
(assert (not (str.in.re X (re.++ (str.to.re "www.blazefind.com") (re.* re.allchar) (str.to.re "started.") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "CodeguruBrowserwww.sogou.com\x0a")))))
; searches\x2Eworldtostart\x2Ecom\w+searchreslt\x7D\x7BSysuptime\x3A
(assert (str.in.re X (re.++ (str.to.re "searches.worldtostart.com") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "searchreslt}{Sysuptime:\x0a"))))
(check-sat)
