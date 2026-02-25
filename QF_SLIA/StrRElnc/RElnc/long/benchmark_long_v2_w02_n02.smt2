(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (>= (str.len y) 1000))

(assert (= x (str.++ "76" y)))

(assert (str.in_re x (re.++ (re.+ (re.range "0" "7")) (re.* (re.range "6" "8")))))
(assert (str.in_re y (re.* (re.* (re.+ (str.to_re "51"))))))

(assert (= (+ (* 3 (str.len x)) (* 9 (str.len y))) 58))
(assert (= (+ (* (- 9) (str.to_int x)) (* (- 5) (str.to_int y))) 76))

(check-sat)