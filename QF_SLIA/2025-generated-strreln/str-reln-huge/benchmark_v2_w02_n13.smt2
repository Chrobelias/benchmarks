(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.len x) 10))
(assert (>= (str.to_int y) 0))
(assert (>= (str.len y) 10))

(assert (str.in_re x (re.++ (re.* (str.to_re "84")) (re.union (re.* (re.range "3" "6")) (re.range "6" "9")))))
(assert (str.in_re y (re.* (re.++ (str.to_re "8") (str.to_re "928")))))

(assert (>= (+ (* 6 (str.to_int x)) (* (- 8) (str.to_int y))) 12))
(assert (> (* 4 (str.len y)) 91))

(check-sat)