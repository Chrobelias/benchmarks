(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (str.in_re x (re.union (re.union (str.to_re "75") (re.union (re.+ (str.to_re "210")) (str.to_re "609"))) (str.to_re "4"))))
(assert (str.in_re y (re.union (re.union (str.to_re "2") (re.* (re.* (str.to_re "0")))) (str.to_re "1"))))

(assert (< (+ (* (- 8) (str.len x)) (* 2 (str.len y)) (* (- 2) (str.to_int y))) 95))
(assert (< (+ (* (- 5) (str.len x)) (* 2 (str.len y)) (* 7 (str.to_int x)) (* (- 8) (str.to_int y))) 55))
(assert (< (+ (- (str.len x)) (* (- 6) (str.len y))) 58))
(assert (= (+ (* (- 7) (str.to_int x)) (* 8 (str.to_int y))) 31))

(check-sat)