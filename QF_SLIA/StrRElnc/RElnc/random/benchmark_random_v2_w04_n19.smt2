(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (= x (str.++ "74" y)))

(assert (str.in_re y (re.union (re.* (str.to_re "31")) (re.++ (re.+ (str.to_re "730")) (str.to_re "40")))))
(assert (str.in_re x (re.* (re.++ (re.range "0" "9") (re.* (str.to_re "84"))))))

(assert (= (+ (* (- 3) (str.len y)) (* (- 2) (str.to_int x)) (* 9 (str.to_int y))) 57))
(assert (< (* (- 8) (str.to_int x)) 62))
(assert (> (+ (* 9 (str.to_int x)) (* 10 (str.to_int y))) 29))

(check-sat)