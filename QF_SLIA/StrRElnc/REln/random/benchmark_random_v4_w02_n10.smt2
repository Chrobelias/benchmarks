(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)
(declare-const a String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))
(assert (>= (str.to_int a) 0))

(assert (str.in_re z (re.* (re.+ (re.++ (str.to_re "86") (str.to_re "1"))))))
(assert (str.in_re x (re.* (str.to_re "80"))))
(assert (str.in_re a (re.+ (re.+ (re.range "0" "3")))))
(assert (str.in_re y (re.union (re.range "5" "9") (re.* (str.to_re "39")))))

(assert (= (+ (* 7 (str.len a)) (str.to_int x) (* (- 4) (str.to_int y)) (* (- 5) (str.to_int z))) 88))

(check-sat)