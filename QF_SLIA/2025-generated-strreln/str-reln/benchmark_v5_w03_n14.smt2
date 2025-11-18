(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)
(declare-const a String)
(declare-const b String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))
(assert (>= (str.to_int a) 0))
(assert (>= (str.to_int b) 0))

(assert (str.in_re x (re.* (re.union (re.+ (str.to_re "34")) (str.to_re "5")))))
(assert (str.in_re y (re.++ (str.to_re "301") (re.+ (re.union (str.to_re "2") (re.* (str.to_re "50")))))))
(assert (str.in_re z (re.union (re.+ (str.to_re "94")) (str.to_re "31"))))
(assert (str.in_re a (re.union (re.union (str.to_re "262") (re.+ (str.to_re "606"))) (str.to_re "6"))))
(assert (str.in_re b (re.union (str.to_re "80") (re.union (re.* (str.to_re "4")) (str.to_re "95")))))

(assert (= (+ (* 9 (str.to_int x)) (* (- 6) (str.to_int y)) (* 10 (str.to_int z)) (* 4 (str.to_int a)) (* (- 2) (str.to_int b))) 0))
(assert (< (+ (* (- 10) (str.len x)) (* (- 10) (str.len a)) (* 4 (str.len b)) (* 7 (str.to_int x)) (* 8 (str.to_int b))) 67))

(check-sat)