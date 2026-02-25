(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (>= (str.len y) 1000))

(assert (= x (str.++ "24" y)))

(assert (str.in_re y (re.+ (re.union (re.* (str.to_re "4")) (str.to_re "49")))))
(assert (str.in_re x (re.union (re.union (re.* (re.range "0" "5")) (re.range "4" "6")) (str.to_re "72"))))

(assert (>= (+ (* 4 (str.to_int x)) (* 10 (str.to_int y))) 32))
(assert (> (+ (* (- 5) (str.len x)) (* (- 4) (str.len y))) 73))
(assert (< (+ (* (- 10) (str.len x)) (* (- 7) (str.len y))) 43))

(check-sat)