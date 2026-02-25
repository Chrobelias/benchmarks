(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (>= (str.len x) 1000))

(assert (str.in_re y (re.union (re.* (re.+ (re.range "0" "6"))) (str.to_re "59"))))
(assert (str.in_re x (re.* (re.union (str.to_re "81") (re.* (re.range "3" "8"))))))

(assert (> (+ (* 10 (str.len x)) (- (str.len y))) 59))
(assert (= (+ (* (- 6) (str.to_int x)) (* 5 (str.to_int y))) 94))
(assert (<= (+ (* (- 10) (str.len x)) (* 9 (str.len y))) 6))
(assert (>= (+ (* 9 (str.to_int x)) (* 7 (str.to_int y))) 68))

(check-sat)