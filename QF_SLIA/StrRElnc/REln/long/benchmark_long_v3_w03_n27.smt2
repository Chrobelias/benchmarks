(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (>= (str.len z) 1000))
(assert (>= (str.len x) 1000))

(assert (str.in_re y (re.+ (re.* (re.union (str.to_re "68") (re.* (str.to_re "10")))))))
(assert (str.in_re z (re.union (re.+ (str.to_re "42")) (re.+ (str.to_re "84")))))
(assert (str.in_re x (re.union (str.to_re "22") (re.+ (re.* (re.+ (str.to_re "519")))))))

(assert (<= (+ (* 9 (str.to_int x)) (* 10 (str.to_int z))) 44))
(assert (>= (+ (* (- 2) (str.to_int x)) (* 6 (str.to_int y)) (* (- 10) (str.to_int z))) 28))
(assert (>= (+ (* 9 (str.len x)) (* 2 (str.len y)) (* 2 (str.len z))) 22))

(check-sat)