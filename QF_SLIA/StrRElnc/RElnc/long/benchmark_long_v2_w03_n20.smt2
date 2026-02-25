(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (>= (str.len y) 1000))
(assert (>= (str.len x) 1000))

(assert (= x (str.++ "41" y)))

(assert (str.in_re x (re.+ (re.union (re.range "0" "9") (re.* (str.to_re "916"))))))
(assert (str.in_re y (re.union (re.+ (re.+ (re.* (str.to_re "960")))) (str.to_re "786"))))

(assert (> (+ (* 4 (str.len x)) (* 8 (str.len y)) (* (- 9) (str.to_int x)) (* 6 (str.to_int y))) 20))
(assert (>= (+ (* 9 (str.len x)) (str.len y)) 54))

(check-sat)