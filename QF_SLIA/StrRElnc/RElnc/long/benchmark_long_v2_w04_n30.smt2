(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (>= (str.len x) 1000))

(assert (= x (str.++ "55" y)))

(assert (str.in_re y (re.* (re.* (re.+ (re.+ (str.to_re "1")))))))
(assert (str.in_re x (re.union (re.* (re.range "0" "9")) (re.+ (str.to_re "62")))))

(assert (> (+ (* 10 (str.to_int x)) (* (- 3) (str.to_int y))) 2))
(assert (> (+ (* (- 8) (str.len y)) (* 3 (str.to_int x))) 85))
(assert (>= (+ (* (- 5) (str.len x)) (* (- 9) (str.len y))) 13))

(check-sat)