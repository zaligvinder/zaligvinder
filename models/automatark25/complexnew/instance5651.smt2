(declare-const X String)
; Host\u{3a}Subject\u{3A}ClientnamedFrom\u{3A}
(assert (str.in_re X (str.to_re "Host:Subject:ClientnamedFrom:\u{a}")))
; User-Agent\u{3A}readyHost\u{3A}Host\u{3A}Subject\u{3A}wininetproducts
(assert (str.in_re X (str.to_re "User-Agent:readyHost:Host:Subject:wininetproducts\u{a}")))
; filename=\u{22}Subject\u{3a}www\u{2E}adoptim\u{2E}comreport\u{2F}bar_pl\u{2F}chk\.fcgi
(assert (str.in_re X (str.to_re "filename=\u{22}Subject:www.adoptim.comreport/bar_pl/chk.fcgi\u{a}")))
(check-sat)
