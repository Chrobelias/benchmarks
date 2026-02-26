(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (= y (str.++ x "43" "44" z)))

(assert (str.in_re y (re.++ (re.* (re.* (str.to_re "78"))) (re.* (re.range "3" "8")))))
(assert (str.in_re x (re.+ (str.to_re "65"))))
(assert (str.in_re z (re.+ (str.to_re "588"))))

(assert (>= (+ (* 9 (str.len x)) (* 9 (str.len z))) 21))
(assert (< (+ (* (- 5) (str.len x)) (* 4 (str.len y))) 98))
(assert (>= (+ (* (- 8) (str.to_int x)) (* (- 4) (str.to_int y)) (* (- 3) (str.to_int z))) 53))

(check-sat)