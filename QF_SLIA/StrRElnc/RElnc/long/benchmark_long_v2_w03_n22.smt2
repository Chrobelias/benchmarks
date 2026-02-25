(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (>= (str.len y) 1000))

(assert (= x (str.++ "74" y)))

(assert (str.in_re y (re.union (re.+ (re.* (str.to_re "6"))) (re.+ (str.to_re "78")))))
(assert (str.in_re x (re.+ (re.+ (re.union (str.to_re "330") (re.* (re.range "4" "8")))))))

(assert (< (+ (* 8 (str.len x)) (* 4 (str.to_int y))) 42))
(assert (= (+ (* (- 2) (str.to_int x)) (* 9 (str.to_int y))) 22))

(check-sat)