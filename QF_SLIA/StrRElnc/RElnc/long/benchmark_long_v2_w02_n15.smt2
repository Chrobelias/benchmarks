(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (>= (str.len x) 1000))
(assert (>= (str.len y) 1000))

(assert (= (str.++ "76" y) (str.++ x "26")))

(assert (str.in_re x (re.+ (re.union (re.+ (re.range "2" "9")) (str.to_re "5")))))
(assert (str.in_re y (re.union (re.+ (re.range "2" "7")) (str.to_re "8"))))

(assert (>= (+ (* 5 (str.to_int x)) (* (- 10) (str.to_int y))) 72))
(assert (> (+ (* (- 10) (str.len x)) (* (- 4) (str.len y))) 54))

(check-sat)