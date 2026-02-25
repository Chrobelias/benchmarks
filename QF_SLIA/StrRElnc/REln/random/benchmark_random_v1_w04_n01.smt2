(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.* (re.union (str.to_re "700") (re.range "5" "7")))))

(assert (= (+ (* 10 (str.len x)) (str.to_int x)) 36))
(assert (< (* (- 8) (str.to_int x)) 20))
(assert (> (* 8 (str.to_int x)) 10))

(check-sat)