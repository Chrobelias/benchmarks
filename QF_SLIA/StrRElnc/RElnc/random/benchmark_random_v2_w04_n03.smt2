(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (= (str.++ "33" x) (str.++ y "34")))

(assert (str.in_re y (re.+ (re.union (re.+ (str.to_re "186")) (re.* (re.range "2" "8"))))))
(assert (str.in_re x (re.union (re.union (str.to_re "1") (re.* (str.to_re "78"))) (re.* (re.range "1" "6")))))

(assert (> (+ (* (- 10) (str.to_int x)) (* (- 7) (str.to_int y))) 82))
(assert (> (+ (* 3 (str.to_int x)) (* 4 (str.to_int y))) 15))
(assert (= (+ (* (- 3) (str.len x)) (* 4 (str.len y)) (* (- 6) (str.to_int y))) 77))

(check-sat)