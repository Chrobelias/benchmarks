(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (= y (str.++ x "38")))

(assert (str.in_re x (re.union (re.* (str.to_re "34")) (str.to_re "108"))))
(assert (str.in_re y (re.+ (re.* (re.* (re.+ (re.range "0" "8")))))))

(assert (<= (+ (* 3 (str.len x)) (* (- 2) (str.len y)) (* 8 (str.to_int x)) (* (- 10) (str.to_int y))) 33))
(assert (< (+ (* 3 (str.to_int x)) (- (str.to_int y))) 13))
(assert (= (+ (- (str.len x)) (* (- 5) (str.len y))) 37))

(check-sat)