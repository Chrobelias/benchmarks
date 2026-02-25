(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (str.in_re z (re.++ (re.union (re.* (re.range "0" "5")) (re.* (str.to_re "84"))) (str.to_re "6"))))
(assert (str.in_re y (re.+ (re.++ (str.to_re "32") (str.to_re "68")))))
(assert (str.in_re x (re.+ (re.+ (re.union (re.* (re.range "7" "9")) (str.to_re "427"))))))

(assert (= (+ (str.to_int x) (* (- 10) (str.to_int y)) (* 5 (str.to_int z))) 9))
(assert (> (+ (* 6 (str.len x)) (* 3 (str.len y)) (* (- 8) (str.len z))) 55))

(check-sat)