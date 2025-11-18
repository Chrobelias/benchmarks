(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)
(declare-const a String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))
(assert (>= (str.to_int a) 0))

(assert (str.in_re x (re.union (re.* (str.to_re "8")) (re.range "6" "8"))))
(assert (str.in_re y (re.* (re.++ (re.+ (re.+ (str.to_re "10"))) (str.to_re "9")))))
(assert (str.in_re z (re.+ (re.+ (re.++ (str.to_re "356") (str.to_re "454"))))))
(assert (str.in_re a (re.union (str.to_re "4") (re.* (re.* (re.range "1" "4"))))))

(assert (< (+ (* (- 8) (str.len y)) (* 9 (str.to_int z))) 61))
(assert (<= (+ (* 8 (str.len x)) (str.len y) (* 8 (str.len z)) (* (- 6) (str.len a))) 68))

(check-sat)