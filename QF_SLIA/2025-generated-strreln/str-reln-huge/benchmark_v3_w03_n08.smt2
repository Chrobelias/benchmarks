(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.len x) 10))
(assert (>= (str.to_int y) 0))
(assert (>= (str.len y) 10))
(assert (>= (str.to_int z) 0))
(assert (>= (str.len z) 10))

(assert (str.in_re x (re.++ (str.to_re "693") (re.+ (re.+ (re.+ (str.to_re "4")))))))
(assert (str.in_re y (re.union (re.* (str.to_re "51")) (str.to_re "33"))))
(assert (str.in_re z (re.* (re.union (str.to_re "807") (re.range "7" "9")))))

(assert (= (+ (* 7 (str.len x)) (* (- 10) (str.len y)) (* (- 7) (str.len z))) 82))
(assert (< (+ (* (- 4) (str.len x)) (* 10 (str.len y)) (* (- 8) (str.len z))) 87))
(assert (<= (+ (* 7 (str.to_int x)) (str.to_int y) (* 6 (str.to_int z))) 32))

(check-sat)