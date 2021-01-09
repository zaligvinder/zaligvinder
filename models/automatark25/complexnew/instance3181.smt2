(declare-const X String)
; xmlpage=Host\x3A\x2EhtmlUser-Agent\x3Abindmqnqgijmng\x2fojMirar_KeywordContent
(assert (str.in.re X (str.to.re "xmlpage=Host:.htmlUser-Agent:bindmqnqgijmng/ojMirar_KeywordContent\x13\x0a")))
; (\'([^\'\\]*\\.)*[^\'\\]*\')+
(assert (not (str.in.re X (re.++ (re.+ (re.++ (str.to.re "'") (re.* (re.++ (re.* (re.union (str.to.re "'") (str.to.re "\x5c"))) (str.to.re "\x5c") re.allchar)) (re.* (re.union (str.to.re "'") (str.to.re "\x5c"))) (str.to.re "'"))) (str.to.re "\x0a")))))
; Host\x3AX-Mailer\x3atoolbar\.wishbone\.com
(assert (not (str.in.re X (str.to.re "Host:X-Mailer:\x13toolbar.wishbone.com\x0a"))))
(check-sat)
