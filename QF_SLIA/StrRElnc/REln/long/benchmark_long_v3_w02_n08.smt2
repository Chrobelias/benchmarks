(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (>= (str.len x) 1000))
(assert (>= (str.len y) 1000))

(assert (str.in_re z (re.++ (re.++ (re.* (str.to_re "649")) (re.* (re.range "2" "6"))) (re.range "2" "6"))))
(assert (str.in_re y (re.++ (re.* (str.to_re "982")) (re.++ (re.range "5" "9") (str.to_re "330")))))
(assert (str.in_re x (re.* (re.++ (str.to_re "909") (str.to_re "898")))))

(assert (<= (+ (* 10 (str.to_int x)) (* (- 9) (str.to_int y)) (* 3 (str.to_int z))) 64))
(assert (<= (+ (* 6 (str.len x)) (* (- 5) (str.len y)) (* (- 8) (str.len z))) 88))

(check-sat)