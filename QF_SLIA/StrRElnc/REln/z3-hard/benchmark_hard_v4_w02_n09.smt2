(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)
(declare-const a String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))
(assert (>= (str.to_int a) 0))

(assert (str.in_re z (re.union (re.++ (str.to_re "924") (re.* (str.to_re "112"))) (str.to_re "851"))))
(assert (str.in_re y (re.union (re.* (re.* (str.to_re "86"))) (re.+ (str.to_re "590")))))
(assert (str.in_re x (re.++ (str.to_re "39") (re.* (str.to_re "2")))))
(assert (str.in_re a (re.* (str.to_re "497"))))

(assert (= (+ (* 3 (str.to_int x)) (* 6 (str.to_int y)) (* 5 (str.to_int z)) (* 7 (str.to_int a))) 49))
(assert (< (+ (* 7 (str.len x)) (* 7 (str.len y)) (* (- 4) (str.len z)) (* 6 (str.len a))) 42))

(check-sat)