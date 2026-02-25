(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (str.in_re y (re.union (re.+ (re.+ (str.to_re "746"))) (re.* (str.to_re "44")))))
(assert (str.in_re x (re.* (re.++ (re.+ (str.to_re "7")) (str.to_re "173")))))

(assert (= (+ (* 3 (str.len x)) (* 8 (str.to_int y))) 60))
(assert (< (+ (* 4 (str.len x)) (* (- 6) (str.len y))) 34))

(check-sat)