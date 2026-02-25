(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (>= (str.len z) 1000))
(assert (>= (str.len x) 1000))
(assert (>= (str.len y) 1000))

(assert (str.in_re y (re.++ (str.to_re "41") (re.* (str.to_re "865")))))
(assert (str.in_re x (re.* (re.++ (re.+ (re.+ (str.to_re "317"))) (str.to_re "322")))))
(assert (str.in_re z (re.* (str.to_re "29"))))

(assert (>= (+ (* (- 2) (str.len x)) (* 2 (str.to_int z))) 40))

(check-sat)