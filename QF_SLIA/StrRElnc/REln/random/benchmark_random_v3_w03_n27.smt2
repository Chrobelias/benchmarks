(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (str.in_re y (re.* (re.* (re.++ (re.* (re.range "7" "9")) (str.to_re "80"))))))
(assert (str.in_re x (re.union (re.* (str.to_re "48")) (str.to_re "886"))))
(assert (str.in_re z (re.* (str.to_re "5"))))

(assert (> (+ (* (- 10) (str.len y)) (* 10 (str.to_int z))) 32))
(assert (= (+ (* (- 10) (str.len x)) (* 2 (str.len y)) (* (- 4) (str.len z))) 15))

(check-sat)