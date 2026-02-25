(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)
(declare-const a String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))
(assert (>= (str.to_int a) 0))

(assert (str.in_re a (re.++ (re.++ (str.to_re "13") (re.* (str.to_re "146"))) (str.to_re "9"))))
(assert (str.in_re y (re.* (re.* (re.union (re.* (str.to_re "786")) (re.range "0" "5"))))))
(assert (str.in_re z (re.+ (str.to_re "65"))))
(assert (str.in_re x (re.++ (re.++ (re.* (re.range "2" "8")) (str.to_re "730")) (re.+ (str.to_re "8")))))

(assert (> (+ (* 9 (str.len a)) (* (- 9) (str.to_int a))) 95))

(check-sat)