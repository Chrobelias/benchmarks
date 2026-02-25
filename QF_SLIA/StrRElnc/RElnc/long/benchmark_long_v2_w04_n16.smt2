(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (>= (str.len x) 1000))
(assert (>= (str.len y) 1000))

(assert (= x (str.++ "12" y)))

(assert (str.in_re x (re.+ (re.++ (re.* (re.range "5" "8")) (re.range "1" "6")))))
(assert (str.in_re y (re.union (re.* (re.* (re.+ (str.to_re "880")))) (str.to_re "4"))))

(assert (= (+ (* 6 (str.len x)) (* (- 6) (str.len y))) 60))
(assert (>= (+ (* (- 8) (str.len x)) (* 4 (str.len y)) (* 8 (str.to_int x))) 25))
(assert (<= (* 7 (str.to_int y)) 60))

(check-sat)