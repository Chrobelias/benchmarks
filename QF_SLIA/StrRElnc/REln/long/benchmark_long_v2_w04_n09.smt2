(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (>= (str.len x) 1000))

(assert (str.in_re y (re.* (re.union (re.* (re.+ (str.to_re "187"))) (str.to_re "65")))))
(assert (str.in_re x (re.union (re.union (re.union (re.* (str.to_re "1")) (str.to_re "254")) (str.to_re "846")) (str.to_re "1"))))

(assert (= (+ (* (- 7) (str.len y)) (* 2 (str.to_int x)) (* 7 (str.to_int y))) 75))
(assert (>= (+ (- (str.to_int x)) (* (- 7) (str.to_int y))) 74))
(assert (<= (* 3 (str.to_int y)) 63))

(check-sat)