(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (= (str.++ "85" x) (str.++ z y "68")))

(assert (str.in_re x (re.+ (re.* (re.union (re.range "2" "9") (re.range "1" "7"))))))
(assert (str.in_re y (re.union (re.+ (str.to_re "882")) (re.union (re.range "2" "8") (str.to_re "532")))))
(assert (str.in_re z (re.++ (re.* (re.range "4" "8")) (re.union (str.to_re "343") (str.to_re "36")))))

(assert (>= (+ (* (- 4) (str.len z)) (* 9 (str.to_int x)) (* 10 (str.to_int y)) (* 7 (str.to_int z))) 5))
(assert (= (+ (* 4 (str.to_int x)) (* (- 8) (str.to_int z))) 65))

(check-sat)