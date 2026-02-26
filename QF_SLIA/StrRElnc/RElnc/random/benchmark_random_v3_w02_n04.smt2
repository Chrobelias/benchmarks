(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (= z (str.++ x y "23" "97")))

(assert (str.in_re z (re.++ (re.* (re.range "0" "9")) (re.* (str.to_re "8")))))
(assert (str.in_re y (re.union (re.++ (str.to_re "98") (str.to_re "212")) (re.+ (str.to_re "39")))))
(assert (str.in_re x (re.+ (re.+ (re.+ (re.* (str.to_re "7")))))))

(assert (= (+ (* (- 7) (str.len x)) (* 2 (str.len y)) (str.len z)) 3))
(assert (= (+ (* 5 (str.to_int x)) (* (- 7) (str.to_int y)) (* 10 (str.to_int z))) 79))

(check-sat)