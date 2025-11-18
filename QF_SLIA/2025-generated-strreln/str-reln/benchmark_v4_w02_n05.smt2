(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)
(declare-const a String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))
(assert (>= (str.to_int a) 0))

(assert (str.in_re x (re.++ (re.union (str.to_re "7") (re.* (str.to_re "343"))) (str.to_re "253"))))
(assert (str.in_re y (re.* (str.to_re "412"))))
(assert (str.in_re z (re.union (str.to_re "6") (re.+ (str.to_re "68")))))
(assert (str.in_re a (re.++ (re.* (str.to_re "911")) (str.to_re "546"))))

(assert (> (+ (* (- 6) (str.len y)) (* 8 (str.len a)) (* (- 3) (str.to_int x))) 68))

(check-sat)