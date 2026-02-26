(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (= (str.++ y x) (str.++ "45" z)))

(assert (str.in_re z (re.++ (re.* (str.to_re "6")) (re.range "0" "4"))))
(assert (str.in_re y (re.union (re.+ (re.range "0" "8")) (str.to_re "680"))))
(assert (str.in_re x (re.* (str.to_re "0"))))

(assert (>= (+ (* 5 (str.to_int x)) (* (- 4) (str.to_int z))) 65))
(assert (= (+ (* 10 (str.len x)) (* (- 8) (str.len y)) (* (- 6) (str.len z))) 48))
(assert (> (+ (* (- 8) (str.len x)) (* 4 (str.len y)) (* 6 (str.len z))) 94))

(check-sat)