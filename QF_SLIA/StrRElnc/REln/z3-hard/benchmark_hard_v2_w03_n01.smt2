(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (str.in_re y (re.* (str.to_re "4"))))
(assert (str.in_re x (re.union (re.* (re.+ (str.to_re "614"))) (re.+ (str.to_re "51")))))

(assert (= (+ (* 8 (str.len x)) (* 7 (str.len y)) (- (str.to_int x)) (* (- 5) (str.to_int y))) 10))
(assert (= (+ (* (- 7) (str.len x)) (str.len y)) 70))

(check-sat)