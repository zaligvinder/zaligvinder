(set-info :smt-lib-version 2.6)
(set-logic ALL)
(set-info :source |
Generated by: Hung-En Wang, Shih-Yu Chen, Fang Yu, and Jie-Hong R. Jiang
Generated on: 2019-02-28
Generator: modified from Kaluza benchmarks
Application: Security analysis of string manipulating web applications with string length constraints
Target solver: ABC, CVC4, Norn, S3P, Trau, Z3-str3
Publication:
Hung-En Wang, Shih-Yu Chen, Fang Yu, Jie-Hong R. Jiang:
A symbolic model checking approach to the analysis of string and length constraints. ASE 2018: 623-633
|)
(set-info :license "https://creativecommons.org/licenses/by/4.0/")
(set-info :category "industrial")
(set-info :status unknown)

(declare-fun T_SELECT_18 () Bool)
(declare-fun T_ce () Bool)
(declare-fun T_cf () Bool)
(declare-fun I0_306 () Int)
(declare-fun I0_310 () Int)
(declare-fun I1_306 () Int)
(declare-fun I1_310 () Int)
(declare-fun I2_306 () Int)
(declare-fun I2_310 () Int)
(declare-fun PCTEMP_LHS_80 () Int)
(declare-fun T_d3 () Int)
(declare-fun NEW_DGNode_516 () String)
(declare-fun NEW_DGNode_517 () String)
(declare-fun NEW_DGNode_621 () String)
(declare-fun NEW_DGNode_622 () String)
(declare-fun NEW_DGNode_762 () String)
(declare-fun NEW_DGNode_763 () String)
(declare-fun PCTEMP_LHS_81 () String)
(declare-fun PCTEMP_LHS_84 () String)
(declare-fun T1_306 () String)
(declare-fun T1_310 () String)
(declare-fun T2_306 () String)
(declare-fun T2_310 () String)
(declare-fun T3_306 () String)
(declare-fun T3_310 () String)
(declare-fun T_d2 () String)
(assert (= T_d2 NEW_DGNode_622))
(assert (= NEW_DGNode_622 NEW_DGNode_621))
(assert (= NEW_DGNode_622 NEW_DGNode_516))
(assert (= NEW_DGNode_516 NEW_DGNode_517))
(assert (= NEW_DGNode_516 (str.++ T1_306 T2_306)))
(assert (= T2_306 (str.++ PCTEMP_LHS_81 T3_306)))
(assert (= NEW_DGNode_517 (str.++ T1_310 T2_310)))
(assert (= T2_310 (str.++ PCTEMP_LHS_84 T3_310)))
(assert (= PCTEMP_LHS_84 NEW_DGNode_763))
(assert (= NEW_DGNode_763 NEW_DGNode_762))
(assert (not (str.in.re NEW_DGNode_763 (str.to.re "+"))))
(assert (not (str.in.re NEW_DGNode_762 (str.to.re "%"))))
(assert (not (str.in.re NEW_DGNode_621 (str.to.re "&"))))
(assert (= T_SELECT_18 (not (= PCTEMP_LHS_80 (- 1)))))
(assert T_cf)
(assert (= T_cf (not T_ce)))
(assert (= T_ce (= PCTEMP_LHS_80 (- 1))))
(assert (= I0_306 (- PCTEMP_LHS_80 0)))
(assert (>= PCTEMP_LHS_80 0))
(assert (>= I2_310 T_d3))
(assert (= I2_310 I1_310))
(assert (<= I2_310 I1_310))
(assert (= I0_310 (- I2_310 T_d3)))
(assert (>= T_d3 0))
(assert (= T_d3 (+ PCTEMP_LHS_80 1)))
(assert (<= PCTEMP_LHS_80 I1_306))
(assert (= I2_306 I1_306))
(assert (= I1_306 (str.len T_d2))) ; len 0
(assert (= I1_310 (str.len T_d2))) ; len 0
(assert (= 0 (str.len T1_306))) ; len 1
(assert (= I0_306 (str.len PCTEMP_LHS_81))) ; len 2
(assert (= T_d3 (str.len T1_310))) ; len 3
(assert (= I0_310 (str.len PCTEMP_LHS_84))) ; len 4
(check-sat)
(exit)
