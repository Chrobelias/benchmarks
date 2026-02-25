(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (= y (str.++ "77" x)))

(assert (str.in_re y (re.+ (re.+ (re.++ (re.range "7" "9") (re.* (str.to_re "847")))))))
(assert (str.in_re x (re.union (str.to_re "9") (re.* (re.+ (str.to_re "4"))))))

(assert (>= (+ (* 3 (str.len y)) (* (- 3) (str.to_int y))) 95))
(assert (>= (+ (* 3 (str.len x)) (* 6 (str.len y))) 28))

(check-sat)