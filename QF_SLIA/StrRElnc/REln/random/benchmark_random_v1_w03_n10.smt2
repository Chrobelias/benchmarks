(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.* (re.union (str.to_re "59") (re.range "5" "7")))))

(assert (>= (* 7 (str.to_int x)) 73))
(assert (<= (* 4 (str.len x)) 7))
(assert (>= (* (- 3) (str.to_int x)) 10))

(check-sat)