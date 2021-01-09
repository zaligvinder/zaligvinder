(declare-const X String)
; Host\x3A\s+Server\x00User-Agent\x3atoolsbar\x2Ekuaiso\x2Ecom
(assert (str.in.re X (re.++ (str.to.re "Host:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Server\x00User-Agent:toolsbar.kuaiso.com\x0a"))))
(check-sat)
