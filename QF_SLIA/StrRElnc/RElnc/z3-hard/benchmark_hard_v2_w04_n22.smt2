(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (= y (str.++ x "27")))

(assert (str.in_re x (re.* (str.to_re "884"))))
(assert (str.in_re y (re.union (re.* (str.to_re "732")) (re.++ (re.+ (re.range "2" "9")) (re.range "6" "9")))))

(assert (>= (+ (* 5 (str.len x)) (* 2 (str.len y))) 23))
(assert (> (+ (str.len y) (* (- 7) (str.to_int y))) 8))
(assert (<= (+ (* (- 4) (str.len x)) (* (- 5) (str.len y))) 21))

(check-sat)