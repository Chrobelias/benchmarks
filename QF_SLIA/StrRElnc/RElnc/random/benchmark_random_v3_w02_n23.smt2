(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (= z (str.++ "57" "86" x y)))

(assert (str.in_re z (re.+ (re.union (re.* (re.+ (str.to_re "22"))) (re.range "1" "8")))))
(assert (str.in_re y (re.union (re.+ (re.++ (str.to_re "648") (str.to_re "709"))) (str.to_re "31"))))
(assert (str.in_re x (re.* (re.union (str.to_re "968") (str.to_re "1")))))

(assert (<= (+ (* 9 (str.len x)) (* (- 9) (str.len y)) (* 7 (str.len z))) 73))
(assert (>= (+ (* 8 (str.to_int x)) (* (- 6) (str.to_int y)) (* 7 (str.to_int z))) 84))

(check-sat)