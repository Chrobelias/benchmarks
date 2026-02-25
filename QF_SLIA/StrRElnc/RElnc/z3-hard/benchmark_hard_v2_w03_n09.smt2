(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (= x (str.++ "51" y)))

(assert (str.in_re y (re.+ (re.* (re.union (re.* (str.to_re "60")) (str.to_re "997"))))))
(assert (str.in_re x (re.+ (re.* (re.union (re.range "1" "9") (re.range "6" "9"))))))

(assert (> (+ (* (- 6) (str.to_int x)) (* 2 (str.to_int y))) 23))
(assert (<= (+ (* (- 7) (str.to_int x)) (* (- 5) (str.to_int y))) 25))
(assert (> (+ (* 4 (str.len x)) (* 3 (str.len y))) 90))

(check-sat)