(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (str.in_re y (re.* (re.* (re.* (re.+ (str.to_re "98")))))))
(assert (str.in_re z (re.union (re.++ (re.+ (str.to_re "1")) (str.to_re "12")) (str.to_re "35"))))
(assert (str.in_re x (re.* (re.union (str.to_re "68") (re.union (re.* (str.to_re "297")) (str.to_re "89"))))))

(assert (< (+ (* 3 (str.len x)) (* (- 9) (str.to_int x))) 36))
(assert (= (+ (* (- 10) (str.to_int x)) (* 5 (str.to_int y)) (* (- 9) (str.to_int z))) 100))

(check-sat)