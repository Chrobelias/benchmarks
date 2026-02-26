(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (>= (str.len x) 1000))
(assert (>= (str.len y) 1000))
(assert (>= (str.len z) 1000))

(assert (= y (str.++ z x "64")))

(assert (str.in_re x (re.union (str.to_re "35") (re.++ (str.to_re "41") (re.+ (re.+ (str.to_re "579")))))))
(assert (str.in_re y (re.union (re.range "0" "9") (re.union (str.to_re "332") (re.* (re.range "0" "6"))))))
(assert (str.in_re z (re.union (re.++ (re.union (re.+ (str.to_re "94")) (str.to_re "973")) (str.to_re "18")) (str.to_re "600"))))

(assert (< (+ (* 4 (str.len x)) (* (- 3) (str.len y))) 81))
(assert (<= (+ (* 4 (str.to_int x)) (* 4 (str.to_int y)) (* 9 (str.to_int z))) 84))
(assert (= (+ (* (- 5) (str.to_int x)) (* (- 9) (str.to_int y)) (* (- 3) (str.to_int z))) 31))

(check-sat)