(declare-const X String)
; Host\x3A\s+Server\x00User-Agent\x3atoolsbar\x2Ekuaiso\x2Ecom
(assert (not (str.in.re X (re.++ (str.to.re "Host:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Server\x00User-Agent:toolsbar.kuaiso.com\x0a")))))
; e(vi?)?
(assert (str.in.re X (re.++ (str.to.re "e") (re.opt (re.++ (str.to.re "v") (re.opt (str.to.re "i")))) (str.to.re "\x0a"))))
; Toolbarkl\x2Esearch\x2Eneed2find\x2EcomtvshowticketsToolbarUser-Agent\x3A\.compress
(assert (str.in.re X (str.to.re "Toolbarkl.search.need2find.comtvshowticketsToolbarUser-Agent:.compress\x0a")))
(check-sat)
