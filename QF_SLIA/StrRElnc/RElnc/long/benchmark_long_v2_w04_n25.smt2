(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (>= (str.len x) 1000))
(assert (>= (str.len y) 1000))

(assert (= x (str.++ "35" y)))

(assert (str.in_re y (re.union (re.++ (re.+ (re.range "0" "9")) (str.to_re "473")) (str.to_re "95"))))
(assert (str.in_re x (re.* (re.range "0" "7"))))

(assert (> (+ (* (- 6) (str.len y)) (* (- 9) (str.to_int x))) 31))
(assert (= (+ (* 5 (str.len y)) (* 5 (str.to_int x))) 30))

(check-sat)