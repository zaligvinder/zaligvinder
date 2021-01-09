(declare-const X String)
; BysooTBUser-Agent\x3A
(assert (str.in.re X (str.to.re "BysooTBUser-Agent:\x0a")))
; to\d+User-Agent\x3AFiltered
(assert (str.in.re X (re.++ (str.to.re "to") (re.+ (re.range "0" "9")) (str.to.re "User-Agent:Filtered\x0a"))))
; /domain=[^&]*?([\x3b\x60]|\x24\x28|%3b|%60|%24%28)/Pi
(assert (str.in.re X (re.++ (str.to.re "/domain=") (re.* (re.comp (str.to.re "&"))) (re.union (str.to.re "$(") (str.to.re "%3b") (str.to.re "%60") (str.to.re "%24%28") (str.to.re ";") (str.to.re "`")) (str.to.re "/Pi\x0a"))))
; HWPEMycount\x2Eyok\x2Ecom
(assert (str.in.re X (str.to.re "HWPEMycount.yok.com\x0a")))
(check-sat)
