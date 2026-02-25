(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)
(declare-const a String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))
(assert (>= (str.to_int a) 0))

(assert (str.in_re a (re.* (re.+ (re.+ (str.to_re "36"))))))
(assert (str.in_re z (re.* (re.+ (re.union (str.to_re "55") (str.to_re "372"))))))
(assert (str.in_re x (re.* (re.union (str.to_re "31") (re.* (str.to_re "385"))))))
(assert (str.in_re y (re.++ (re.+ (str.to_re "8")) (re.+ (re.* (str.to_re "926"))))))

(assert (>= (+ (* 7 (str.to_int x)) (* (- 10) (str.to_int z)) (* (- 7) (str.to_int a))) 89))
(assert (<= (+ (* 5 (str.len x)) (* (- 4) (str.len y)) (* 9 (str.len z)) (* (- 9) (str.len a))) 63))

(check-sat)