(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (str.in_re y (re.* (str.to_re "13"))))
(assert (str.in_re x (re.union (re.* (re.union (str.to_re "665") (str.to_re "9"))) (re.range "5" "9"))))

(assert (= (+ (* (- 3) (str.to_int x)) (* (- 9) (str.to_int y))) 13))
(assert (<= (+ (* 3 (str.len x)) (- (str.len y))) 26))

(check-sat)