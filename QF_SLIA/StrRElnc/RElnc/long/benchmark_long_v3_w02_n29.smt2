(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (>= (str.len z) 1000))
(assert (>= (str.len x) 1000))

(assert (= (str.++ y "48" z) (str.++ x "46")))

(assert (str.in_re z (re.++ (str.to_re "389") (re.union (re.union (re.+ (str.to_re "46")) (str.to_re "7")) (str.to_re "219")))))
(assert (str.in_re y (re.++ (str.to_re "190") (re.++ (re.* (str.to_re "86")) (str.to_re "50")))))
(assert (str.in_re x (re.* (re.range "0" "9"))))

(assert (= (+ (* (- 2) (str.len y)) (* (- 3) (str.len z))) 100))
(assert (>= (+ (* (- 7) (str.to_int x)) (str.to_int y) (* 5 (str.to_int z))) 38))

(check-sat)