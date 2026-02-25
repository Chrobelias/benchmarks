(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (str.in_re y (re.++ (re.* (str.to_re "35")) (re.union (re.* (str.to_re "94")) (re.range "6" "9")))))
(assert (str.in_re x (re.++ (re.+ (str.to_re "374")) (str.to_re "840"))))
(assert (str.in_re z (re.union (str.to_re "905") (re.++ (re.union (str.to_re "43") (re.* (str.to_re "84"))) (str.to_re "282")))))

(assert (> (+ (str.to_int x) (str.to_int y) (* (- 9) (str.to_int z))) 82))
(assert (>= (+ (* (- 6) (str.len x)) (* (- 7) (str.len y)) (str.len z)) 10))
(assert (>= (+ (* 7 (str.len x)) (* 4 (str.len y)) (* 6 (str.len z))) 79))

(check-sat)