(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (= y (str.++ "77" x)))

(assert (str.in_re x (re.++ (re.range "3" "9") (re.* (str.to_re "4")))))
(assert (str.in_re y (re.union (re.* (str.to_re "278")) (re.* (re.+ (str.to_re "775"))))))

(assert (>= (+ (* (- 5) (str.len x)) (* (- 10) (str.len y))) 33))
(assert (>= (+ (* (- 9) (str.len x)) (* (- 8) (str.len y))) 68))
(assert (> (+ (* 5 (str.to_int x)) (* (- 6) (str.to_int y))) 29))

(check-sat)