(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (= y (str.++ "97" x)))

(assert (str.in_re y (re.+ (re.++ (re.range "7" "9") (re.* (re.+ (str.to_re "48")))))))
(assert (str.in_re x (re.union (str.to_re "9") (re.++ (str.to_re "853") (re.* (str.to_re "769"))))))

(assert (< (+ (* (- 10) (str.to_int x)) (* (- 5) (str.to_int y))) 11))
(assert (>= (+ (* 8 (str.to_int x)) (* 2 (str.to_int y))) 85))
(assert (< (+ (* (- 6) (str.len x)) (* (- 5) (str.len y))) 46))
(assert (> (+ (* 6 (str.to_int x)) (* (- 2) (str.to_int y))) 46))

(check-sat)