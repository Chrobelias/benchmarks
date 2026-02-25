(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (str.in_re x (re.++ (re.+ (str.to_re "77")) (re.++ (str.to_re "40") (str.to_re "84")))))
(assert (str.in_re y (re.+ (re.union (str.to_re "674") (re.++ (re.* (str.to_re "60")) (str.to_re "353"))))))

(assert (= (+ (* 3 (str.to_int x)) (* 8 (str.to_int y))) 82))
(assert (> (+ (* 6 (str.len x)) (* 10 (str.len y))) 85))
(assert (>= (+ (* 7 (str.len x)) (* (- 7) (str.len y))) 12))

(check-sat)