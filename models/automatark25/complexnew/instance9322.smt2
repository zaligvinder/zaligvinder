(declare-const X String)
; /filename=[^\n]*\x2etif/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".tif/i\x0a"))))
; http://www.9lessons.info/2008/08/most-popular-articles.html
(assert (str.in.re X (re.++ (str.to.re "http://www") re.allchar (str.to.re "9lessons") re.allchar (str.to.re "info/2008/08/most-popular-articles") re.allchar (str.to.re "html\x0a"))))
; /filename=[^\n]*\x2epfb/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".pfb/i\x0a"))))
; /filename=[^&]*?(\x2e|%2e){2}([\x2f\x5c]|%2f|%5c)/Pi
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "&"))) ((_ re.loop 2 2) (re.union (str.to.re ".") (str.to.re "%2e"))) (re.union (str.to.re "%2f") (str.to.re "%5c") (str.to.re "/") (str.to.re "\x5c")) (str.to.re "/Pi\x0a")))))
(check-sat)
